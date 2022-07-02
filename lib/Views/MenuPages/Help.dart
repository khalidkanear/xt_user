import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  bool issearching = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: ClipPath(
              clipper: CustomBar(),
              child: Container( width: width*0.1, color: AppColors.Button,)
          ),
          leading: Container(
            child:  IconButton(
              icon: Icon(Icons.arrow_back_ios), onPressed: () {
              Navigator.pop(context);
            },
            )
          ),
          automaticallyImplyLeading: false,
          title: Text('Help',
            style: TextStyle(
                fontSize: 22,
                fontFamily: "Poppins",
                color: AppColors.Google,
                fontWeight: FontWeight.bold
            ),),
          iconTheme: IconThemeData(
            color: AppColors.Google, //change your color here
          ),
          centerTitle: true,
          backgroundColor: AppColors.Google,
          toolbarHeight: height*0.08,
          elevation: 0,
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: AppColors.Button, width: 2.0),
            ),
            labelColor: AppColors.BackGround,
            unselectedLabelColor: AppColors.BackGround.withOpacity(0.5),
            labelStyle: TextStyle(
              fontFamily: "Poppins"
            ),
            tabs: [
              Tab( text: "FAQS"),
              Tab( text: "SUPPORT"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      child: Theme(
                        data:theme,
                        child:ExpansionTile(
                          iconColor: AppColors.BackGround,
                          collapsedIconColor: AppColors.BackGround,
                          title: Text(
                            "What is Xstream Gym?",
                            style: TextStyle(fontSize: 16.0,fontFamily: "Poppins",color: AppColors.BackGround, fontWeight: FontWeight.w600),
                          ),
                          children: <Widget>[
                            Container(
                              width: width*1,
                              margin: EdgeInsets.fromLTRB(width*0.04, 0, width*0.05, 0),
                              child: Text("Xstream is a gym workout app that\ncaters to your fitness needs we provide\nqualified instructors"
                                  "and various other\nunique features to contribute to a batter\ncustom experience.",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: "Poppins"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Theme(
                        data:theme,
                        child:ExpansionTile(
                          iconColor: AppColors.BackGround,
                          collapsedIconColor: AppColors.BackGround,
                          title: Text(
                            "What are our features?",
                            style: TextStyle(fontSize: 16.0,fontFamily: "Poppins",color: AppColors.BackGround, fontWeight: FontWeight.w600),
                          ),
                          children: <Widget>[
                            Container(
                              width: width*1,
                              margin: EdgeInsets.fromLTRB(width*0.04, 0, width*0.05, 0),
                              child: Text("This app is quiet simple to use. Just\nadd your credit card, purchase the\n"
                                  "packge you desire and join live\nSession or watch your favourite\ninstructor's prerecorded videos.",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: "Poppins"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Theme(
                        data:theme,
                        child:ExpansionTile(
                          iconColor: AppColors.BackGround,
                          collapsedIconColor: AppColors.BackGround,
                          title: Text(
                            "What is Xstream Gym?",
                            style: TextStyle(fontSize: 16.0,fontFamily: "Poppins",color: AppColors.BackGround, fontWeight: FontWeight.w600),
                          ),
                          children: <Widget>[
                            Container(
                              width: width*1,
                              margin: EdgeInsets.fromLTRB(width*0.04, 0, width*0.05, 0),
                              child: Text("Our app provide Live Seassion's thjat\n"
                                  "allow you to intract with Instructor's\n"
                                  "during the classes. The Features are\nDevices: When you "
                                  "connect with watch\nthen its extracts data which monitor's\n"
                                  "heart-rate, pulses and sleep-rate Sleep/\n"
                                  "Food intake: Sleep monitors your\n"
                                  "sleeping schedule whereas food intake\n"
                                  "monitor's your carbohydrates, proteins\n"
                                  "and fats Game: The motive of games\n"
                                  "are to provide that environment which\n"
                                  "make our user fit and healthy",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontFamily: "Poppins"),
                              ),
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
              color: AppColors.Google,
              child: Column(
                children: [
                  SizedBox(height: height*0.03,),
                  Text("How can we help?",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        color: AppColors.BackGround.withOpacity(0.5),
                    ),),
                  SizedBox(height: height*0.03,),
                  Container(
                    height: height*0.065,
                    margin: EdgeInsets.fromLTRB(width*0.06, 0, width*0.06, 0),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: AppColors.BackGround),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: TextField(
                      cursorColor: AppColors.Button,
                        cursorHeight: height*0.03,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(width*0.03, 0, width*0.03, 0),
                        border: InputBorder.none,
                        hintText: 'Subject',
                        hintStyle:  TextStyle(
                          color: AppColors.BackGround.withOpacity(0.5),
                          fontFamily: "Poppins"
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(width*0.06, height*0.03, width*0.06, 0),
                    padding: EdgeInsets.fromLTRB(width*0.03, height*0.01, width*0.00, 0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: AppColors.BackGround),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: TextField(
                      cursorColor: AppColors.Button,
                      cursorHeight: height*0.03,
                      maxLines: 8,
                      decoration: InputDecoration.collapsed(hintText: "Message",
                          hintStyle:  TextStyle(
                              color: AppColors.BackGround.withOpacity(0.5),
                              fontFamily: "Poppins"
                          )),
                    ),
                  ),
                  Container(
                    height: height*0.05,
                    width: width*1,
                    margin: EdgeInsets.fromLTRB(width*0.06, height*0.03, width*0.06, 0),
                    child: ElevatedButton(
                      child: Text("Send",
                        style: TextStyle(
                            fontFamily: "Poppins"
                        ),
                        textAlign: TextAlign.center,),
                      onPressed: (){
                      },
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.Button,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
    path.lineTo(0, height-50);
    path.quadraticBezierTo(width, height-50, width, height-50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}