import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../Model/videos_model_class.dart';


class Live_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PostHome(),
      ),
    );
  }
}
class PostHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: PostScreen(),),);
  }
}

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int page = 1;
  List<Datum> _DataList=[];
  late Future<List<Datum>> _future;
  ScrollController _controller = ScrollController();
  late Prerecorded payload;
  int pagenumber=1;
  Future<List<Datum>> getData(int pageCount) async {
    String urls =
    Uri.encodeFull("https://backend.xstreamgym.com/api/classes/class?type=prerecorded&per_page=12&page=$pageCount");
    var response = await http.get(Uri.parse(urls), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization':'Bearer 1304|e1lPIp4PBO9NLdFGZYUnMCYbkTWCwq1Iungl5h4i'
    }).timeout(const Duration(seconds: 10));
    payload = prerecordedFromJson(response.body);
    _DataList.insertAll(0, payload.data);
    page++;
    return _DataList;
  }
  @override
  void initState() {
    _future = getData(page);
    super.initState();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        setState(() {
          if(page<=payload.lastPage){
            _future = getData(page);}
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        body:  FutureBuilder(
            future: _future,
            builder: (BuildContext ctx, AsyncSnapshot<List<Datum>> snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return const Center(child: Text("User Not exist"));
              }
              if (!snapshot.hasData) {
                return const Center(child: Text("No Classes Available"));
              }
              var dataToShow = snapshot.data;
              return ListView.builder(
                  controller: _controller,
                  itemCount: dataToShow == null ? 0 : dataToShow.length,
                  itemBuilder: (context, index) {
                    final item = dataToShow![index];
                    return Card(
                      child:Container(
                        height: 200,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,  //I assumed you want to occupy the entire space of the card
                            image: NetworkImage(
                              dataToShow[index].image,
                            ),
                          ),
                        ),
                        child: ListTile(
                          leading: Text(
                            dataToShow[index].description,
                            style: TextStyle(color: Colors.blue),
                          ),
                          title: Text(
                            dataToShow[index].level.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  });
            }),
      );
    }
  }
}
