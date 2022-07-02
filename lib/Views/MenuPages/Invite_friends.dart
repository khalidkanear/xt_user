import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InviteFriends_STF();
  }
}

class InviteFriends_STF extends StatefulWidget {
  const InviteFriends_STF({Key? key}) : super(key: key);

  @override
  _InviteFriends_STFState createState() => _InviteFriends_STFState();
}

class _InviteFriends_STFState extends State<InviteFriends_STF> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Invite to Sxtream Gym",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
          fontSize: 22
        ),),
        backgroundColor: AppColors.Button,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.pop(context);
        },
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(width*0.06, width*0.06, width*0.06, 0),
        child: Column(
          children: [
            Text("Invite friends from social media"),
            Container(
              width: width*1,
              height: height*0.06,
              margin: EdgeInsets.fromLTRB(0, height*0.035, 0, 0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Facebook.jpg",
                            alignment:Alignment.center,
                            height: height*0.05,
                            width: width*0.05,),
                          SizedBox(width: width*0.01,),
                          Text(("Facebook"),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.Google,
                              ))],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.Facebook,
                        padding: EdgeInsets.all(10),
                      ),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(width: width*0.05,),
                  Expanded(
                      child:ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Google.png",
                              alignment:Alignment.center,
                              height: height*0.05,
                              width: width*0.05,),
                            SizedBox(width: width*0.015,),
                            Text(("Google"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.BackGround,
                                ))],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.Google,
                          padding: EdgeInsets.all(15),
                          side: BorderSide(width: 2, color: AppColors.BackGround.withOpacity(0.1)),
                          elevation: 0,
                        ),
                        onPressed: (){},
                      )
                  ),
                ],
              ),
            ),
            Container(
              width: width*1,
              height: height*0.06,
              margin: EdgeInsets.fromLTRB(0, height*0.035, 0, 0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/twitter.png",
                            color: AppColors.Google,
                            alignment:Alignment.center,
                            height: height*0.05,
                            width: width*0.05,),
                          SizedBox(width: width*0.01,),
                          Text(("Twitter"),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.Google,
                              ))],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.twitter,
                        padding: EdgeInsets.all(10),
                      ),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(width: width*0.05,),
                  Expanded(
                      child:ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/contact.png",
                              color: AppColors.Google,
                              alignment:Alignment.center,
                              height: height*0.05,
                              width: width*0.05,),
                            SizedBox(width: width*0.015,),
                            Text(("Contacts"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.Google,
                                ))],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.Button,
                          padding: EdgeInsets.all(15),
                          side: BorderSide(width: 2, color: AppColors.Google),
                          elevation: 0,
                        ),
                        onPressed: (){},
                      )
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

