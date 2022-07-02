import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

import 'Upgrade_Subscription.dart';

class Subscription_Page extends StatefulWidget {
  const Subscription_Page({Key? key}) : super(key: key);

  @override
  State<Subscription_Page> createState() => _Subscription_PageState();
}

class _Subscription_PageState extends State<Subscription_Page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Subscription",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
              fontSize: 22
          ),),
        backgroundColor: AppColors.Button,
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.pop(context);
        },
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Up_Subscription()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.BackGround.withOpacity(0.1)),),
              width: width*1,
              height: height*0.06,
              margin: EdgeInsets.fromLTRB(width*0.05, height*0.035, width*0.05, 0),
              padding: EdgeInsets.fromLTRB(width*0.05, 0, 0, 0),
              child: Row(
                children: [
                  Text("Upgrade Subscription",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16
                    ),)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Up_Subscription()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.BackGround.withOpacity(0.1)),),
              width: width*1,
              height: height*0.06,
              margin: EdgeInsets.fromLTRB(width*0.05, height*0.015, width*0.05, 0),
              padding: EdgeInsets.fromLTRB(width*0.05, 0, 0, 0),
              child: Row(
                children: [
                  Text("Downgrade Subscription",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16
                    ),)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: AppColors.btmbar,
                      title: Text("Cancel subscription",
                        style: TextStyle(
                          fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.Google,
                            fontFamily: "Poppins"
                        ),),
                      content: Text("Are you sure you want to cancel your subscription?",
                        style: TextStyle(
                            fontSize: 14,
                          color: AppColors.Google,
                          fontFamily: "Poppins"
                      ),),
                      actions: [
                        Container(
                          width: width*0.2,
                          height: height*0.04,
                          margin: EdgeInsets.fromLTRB(0, 0, width*0.05, height*0.02),
                          child: ElevatedButton(
                            child: Text("No",
                              style: TextStyle(
                                color: AppColors.Google,
                                  fontFamily: "Poppins"
                              ),
                              textAlign: TextAlign.center,),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[400],
                            ),
                          ),
                        ),
                        Container(
                          width: width*0.2,
                          height: height*0.04,
                          margin: EdgeInsets.fromLTRB(0, 0, width*0.05, height*0.02),
                          child: ElevatedButton(
                            child: Text("Yes",
                              style: TextStyle(
                                  fontFamily: "Poppins"
                              ),
                              textAlign: TextAlign.center,),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.Button,
                            ),
                          ),
                        ),
                      ],
                    );
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.BackGround.withOpacity(0.1)),),
              width: width*1,
              height: height*0.06,
              margin: EdgeInsets.fromLTRB(width*0.05, height*0.015, width*0.05, 0),
              padding: EdgeInsets.fromLTRB(width*0.05, 0, 0, 0),
              child: Row(
                children: [
                  Text("Cancel Subscription",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16
                    ),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

