
import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Classes/Live_Sessions/Messages/Select_User.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Message_STF();
  }
}

class Message_STF extends StatefulWidget {
  const Message_STF({Key? key}) : super(key: key);

  @override
  _Message_STFState createState() => _Message_STFState();
}

class _Message_STFState extends State<Message_STF> {
  List<String> namesonSearch = [];
  List<String> names = <String>[
    'Gabriella Gabriella', 'Kaleigh Chohen',
    'Kirsten Allen', 'Mark Ireland', 'Spin JunKies'];
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 0,
          elevation: 0,
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: AppColors.Button, width: 2.0),
            ),
            labelColor: AppColors.BackGround,
            labelStyle: TextStyle(
              color: AppColors.BackGround,
              fontSize: 16,
              fontFamily: "Poppins",
            ),
            unselectedLabelColor: AppColors.BackGround.withOpacity(0.7),
            tabs: [
              Tab( text: "MESSAGES"),
              Tab( text: "FRIEND REQUESTS")
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: TabBarView(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(width*0.06, height*0.02, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textEditingController,
                        focusNode: _textFocusNode,
                        onChanged: (value){
                          setState(() {
                            namesonSearch = names.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
                          });
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search, color: Colors.black.withOpacity(0.7)),
                          hintText: "Class Name",
                          border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_User()));
                      },
                      child: Container(
                        width: width*0.1,
                        height: height*0.08,
                        child: Icon(Icons.add, color: AppColors.Button,),
                      ),
                    )
                  ],
                ),
              ),
            Container(
            ),
          ],
        ),
      ),
    );
  }
}

