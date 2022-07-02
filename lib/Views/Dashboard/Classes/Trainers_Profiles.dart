import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Classes/Live_Sessions/trainersContent.dart';

import 'TrainersDetails.dart';

class trainersProfile extends StatefulWidget {
  const trainersProfile({Key? key}) : super(key: key);

  @override
  State<trainersProfile> createState() => _trainersProfileState();
}

class _trainersProfileState extends State<trainersProfile> {
  bool issearching = false;
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }
  List<trainerContent> namesonSearch = [];
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
          flexibleSpace: ClipPath(
              clipper: CustomBar(),
              child:  Container( width: 100, color: AppColors.Button,)
          ),
          automaticallyImplyLeading: false,
          title: Text("Trainers",
          style: TextStyle(
            color: AppColors.BackGround.withOpacity(0.5),
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: "Poppins",
          ),),
          iconTheme: IconThemeData(
            color: AppColors.BackGround, //change your color here
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          toolbarHeight: height*0.06,
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
              Tab( text: "ALL"),
              Tab( text: "SAVED")
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(width*0.06, height*0.02, width*0.06, 0),
                      height: height*0.06,
                      child: TextField(
                        cursorColor: AppColors.Button,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search, color: AppColors.BackGround.withOpacity(0.7)),
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
                    Expanded(
                      child: ListView.builder(
                        controller: _controller,
                        itemCount: contents.length,
                        itemBuilder: (_, i) {
                          return Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.BackGround.withOpacity(0.2),width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(width*0.06, height*0.04, width*0.06, 0),
                            height: height*0.1,
                            width: width*0.9,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TrainerDetails()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height*0.1,
                                    width: width*0.2,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(contents[i].image),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          contents[i].name,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: AppColors.BackGround,
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          ImageIcon(
                                            AssetImage(contents[i].star_icon),
                                            size: height*0.015,
                                            color: AppColors.Button,
                                          ),
                                          Container(
                                            child: Text(
                                              contents[i].discription,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Poppins",
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Container(
                  margin: EdgeInsets.fromLTRB(width*0.06, height*0.02, width*0.06, 0),
                  height: height*0.06,
                  child: TextField(
                    cursorColor: AppColors.Button,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class CustomBar extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height-98);
    path.quadraticBezierTo(width, height-98, width, height-98);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}