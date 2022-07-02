import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../Components/Colors.dart';
import '../../Play_Video.dart';
import 'package:http/http.dart' as http;

class Live extends StatelessWidget {
  const Live({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Live_STF();
  }
}

class Live_STF extends StatefulWidget {
  const Live_STF({Key? key}) : super(key: key);

  @override
  _Live_STFState createState() => _Live_STFState();
}

class _Live_STFState extends State<Live_STF> {


  List<String> namesonSearch = [];
   List<String> names = <String>[
    'Time you too change', 'Enter session descriptions',
    'This seassion', 'Enter session descriptions', 'Hshhehebbd Dhdhhbdbd'
        , 'New session', 'Running training session',
    'Enter session descriptions','This is Hip Hop Class',
    'Tets','Enter session descriptions'];
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Live",
          style: TextStyle(
            color: AppColors.BackGround.withOpacity(0.7),
            fontFamily: "Poppins",
          ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(width*0.06, 0, width*0.05, 0),
              height: height*0.06,
              child: Row(
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
                  Container(
                    width: width*0.1,
                    child: Icon(Icons.calendar_today),
                  )
                ],
              ),
            ),
            ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: _textEditingController!.text.isNotEmpty
                    ? namesonSearch.length
                    : names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(width*0.06, height*0.03, width*0.06, 0),
                                padding: EdgeInsets.all(10),
                                height: height*0.2,
                                width: width*0.9,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/trainer2.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: InkWell(
                                  onTap:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>playVideo()));
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        width: width*0.9,
                                        margin: EdgeInsets.fromLTRB(0, height*0.1, 0, 0),
                                        child: Text(_textEditingController!.text.isNotEmpty
                                                  ? namesonSearch[index]
                                                      : names[index],
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.Google,
                                            fontFamily: "Poppins",
                                          ),),
                                      ),
                                      Container(
                                        width: width*0.9,
                                        child: Text("Kaleigh Cohen",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: AppColors.Google,
                                            fontFamily: "Poppins",
                                          ),),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: height*0.013,
                                            width: width*0.0075,
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: ImageIcon(
                                                AssetImage("assets/images/dot.png"),
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: width*0.02,),
                                          Container(
                                            child: Text("beginner",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.Google,
                                                fontFamily: "Poppins",
                                              ),),
                                          ),
                                          Container(
                                            height: height*0.024,
                                            width: width*0.015,
                                            margin: EdgeInsets.fromLTRB(width*0.35, 0, 0, 0),
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: ImageIcon(
                                                AssetImage("assets/images/clock.png"),
                                                color: AppColors.Button,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: width*0.02,),
                                          Text("13:00",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: AppColors.Google,
                                              fontFamily: "Poppins",
                                            ),),
                                          SizedBox(width: width*0.02,),
                                          Container(
                                            height: height*0.018,
                                            width: width*0.01,
                                            margin: EdgeInsets.fromLTRB(width*0.01, 0, 0, 0),
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: ImageIcon(
                                                AssetImage("assets/images/calendar.png"),
                                                color: AppColors.Button,
                                              ),
                                            ),
                                          ),SizedBox(width: width*0.03,),
                                          Text("Mon Jan 03",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: AppColors.Google,
                                              fontFamily: "Poppins",
                                            ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                    ],
                  );
                },
              ),
          ],
        ),
      )
    );
  }
}
