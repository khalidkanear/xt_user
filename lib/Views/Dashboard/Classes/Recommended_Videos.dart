import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Play_Video.dart';

import '../Play_Video.dart';

class Recommended_Video extends StatelessWidget {
  const Recommended_Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Recom_Video_STF();
  }
}

class Recom_Video_STF extends StatefulWidget {
  const Recom_Video_STF({Key? key}) : super(key: key);

  @override
  _Recom_Video_STFState createState() => _Recom_Video_STFState();
}

class _Recom_Video_STFState extends State<Recom_Video_STF> {
  List<String> namesonSearch = [];
  List<String> names = <String>[
    'Indoor Cycling Workout', 'SPIN CLASS- THE ULTIMATE...',
    'SPIN CLASS- TOMB RAIDER...', 'Biginner Indoor Cycling W...', 'HIP HOP SPIN CLASS for BE...'
    , 'SPIN CLASS- FULL THROTTL...', 'Fat Burning Indoor Cycling...',
    'Introduction to Rhythm Cy...','SPIN CLass- tabata hiit-...',
    'Minute Rhythm Cycling Cl...'];
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
          title: Text('Videos',
            style: TextStyle(
                fontSize: 20,
                fontFamily: "Poppins",
                color: AppColors.BackGround.withOpacity(0.7),
                fontWeight: FontWeight.bold
            ),),
          centerTitle: true,
          backgroundColor: AppColors.Google,
          elevation: 0,
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: AppColors.Button, width: 2.0),
            ),
            labelColor: AppColors.BackGround,
            unselectedLabelColor: AppColors.BackGround.withOpacity(0.7),
            tabs: [
              Tab( text: "ALL"),
              Tab( text: "SAVED")
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: TabBarView(
          children: [
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(width*0.06, height*0.02, width*0.06, 0),
                      height: height*0.06,
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
                      height: height*0.7,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
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
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("assets/images/trainer2.png"),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                        padding: EdgeInsets.all(10),
                                        margin: EdgeInsets.fromLTRB(width*0.06, height*0.04, width*0.06, 0),
                                        height: height*0.2,
                                        width: width*0.9,
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>playVideo()));
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.all(5),
                                                  width: width*width*0.6,
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(width*0.62, 0, 0, 0),
                                                    color: AppColors.Button,
                                                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                                    child: Text("30 min",
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: AppColors.Google,
                                                        fontFamily: "Poppins",
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(height: 25,),
                                              Container(
                                                width: width*width*0.6,
                                                child: Text(_textEditingController!.text.isNotEmpty
                                                    ? namesonSearch[index]
                                                    : names[index],
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: AppColors.Google,
                                                    fontSize: 16,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: width*width*0.6,
                                                child: Text("Kaleigh Cohen",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: AppColors.Google,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  ImageIcon(
                                                    AssetImage("assets/images/dot.png"),
                                                    color: Colors.red,
                                                    size: 10,
                                                  ),
                                                  SizedBox(width: 3,),
                                                  Text("Intermediate",
                                                    style: TextStyle(
                                                      color: AppColors.Google,
                                                      fontFamily: "Poppins",
                                                    ),),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(width*0.39, 0, 0, 0),
                                                    child: ImageIcon(
                                                      AssetImage("assets/images/heart.png"),
                                                      color: Colors.red,
                                                      size: 25,
                                                    ),
                                                  ),
                                                  Text("1",
                                                    style: TextStyle(
                                                      color: AppColors.Google,
                                                      fontFamily: "Poppins",
                                                    ),),
                                                  ImageIcon(
                                                    AssetImage("assets/images/eye.png"),
                                                    color: AppColors.Button,
                                                    size: 25,
                                                  ),
                                                  Text("9",
                                                    style: TextStyle(
                                                      color: AppColors.Google,
                                                      fontFamily: "Poppins",
                                                    ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(width*0.06, height*0.02, width*0.06, 0),
                      height: height*0.06,
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
                      height: height*0.7,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
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
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("assets/images/trainer2.png"),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10))),
                                        padding: EdgeInsets.all(10),
                                        margin: EdgeInsets.fromLTRB(width*0.06, height*0.04, width*0.06, 0),
                                        height: height*0.2,
                                        width: width*0.9,
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>playVideo()));
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.all(5),
                                                  width: width*width*0.6,
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(width*0.62, 0, 0, 0),
                                                    color: AppColors.Button,
                                                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                                    child: Text("30 min",
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: AppColors.Google,
                                                        fontFamily: "Poppins",
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(height: 25,),
                                              Container(
                                                width: width*width*0.6,
                                                child: Text(_textEditingController!.text.isNotEmpty
                                                    ? namesonSearch[index]
                                                    : names[index],
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: AppColors.Google,
                                                    fontSize: 16,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: width*width*0.6,
                                                child: Text("Kaleigh Cohen",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: AppColors.Google,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  ImageIcon(
                                                    AssetImage("assets/images/dot.png"),
                                                    color: Colors.red,
                                                    size: 10,
                                                  ),
                                                  SizedBox(width: 3,),
                                                  Text("Intermediate",
                                                    style: TextStyle(
                                                      color: AppColors.Google,
                                                      fontFamily: "Poppins",
                                                    ),),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(width*0.39, 0, 0, 0),
                                                    child: ImageIcon(
                                                      AssetImage("assets/images/heart.png"),
                                                      color: Colors.red,
                                                      size: 25,
                                                    ),
                                                  ),
                                                  Text("1",
                                                    style: TextStyle(
                                                      color: AppColors.Google,
                                                      fontFamily: "Poppins",
                                                    ),),
                                                  ImageIcon(
                                                    AssetImage("assets/images/eye.png"),
                                                    color: AppColors.Button,
                                                    size: 25,
                                                  ),
                                                  Text("9",
                                                    style: TextStyle(
                                                      color: AppColors.Google,
                                                      fontFamily: "Poppins",
                                                    ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


