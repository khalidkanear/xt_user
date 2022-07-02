import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
        backgroundColor: AppColors.Button,
        title: Text('Privacy',
          style: TextStyle(
              fontSize: 22,
              fontFamily: "Poppins",
              color: AppColors.Google,
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(width*0.12, height*0.05, width*0.06, 0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, height*0.025,0, 0),
                    child: Checkbox(
                      checkColor: AppColors.Google,
                      value: this.valuefirst,
                      activeColor: AppColors.Button, onChanged: (bool? value) {  setState(() {
                      this.valuefirst = value!;
                    });    },
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, height*0.027, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Allow other users to view and ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.BackGround,
                              fontFamily: "Poppins",
                              fontSize: 13,
                            ),),
                          SizedBox(width: width*0.005,),
                          Text("share my profile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.BackGround,
                              fontFamily: "Poppins",
                              fontSize: 13,
                            ),),
                        ],
                      )
                  )
                ],
              )
          ),
          Container(
              margin: EdgeInsets.fromLTRB(width*0.12, height*0.05, width*0.06, 0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, height*0.03,0, 0),
                    child: Checkbox(
                      checkColor: AppColors.Google,
                      activeColor: AppColors.Button,
                      value: this.valuesecond, onChanged: (bool? value) {  setState(() {
                      this.valuesecond = value!;
                    });   },
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, height*0.027, 0, 0),
                      child: Text("Allow other users to message me",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.BackGround,
                          fontFamily: "Poppins",
                          fontSize: 13,
                        ),)
                  )
                ],
              )
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width*0.05, height*0.05, width*0.06, 0),
            child: Text("Trainer can view your profile by default\n"
                "and message users",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.BackGround.withOpacity(0.3),
                fontFamily: "Poppins",
                fontSize: 14,
              ),),
          ),
          SizedBox(height: height*0.4,),
          Container(
            width: width*0.5,
            child: ElevatedButton(
              child: Text(("SUBMITT"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.Google,
                  )),
              style: ElevatedButton.styleFrom(
                primary: AppColors.Button,
                padding: EdgeInsets.all(10),
              ),
              onPressed: (){},
            ),
          ),
        ],
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