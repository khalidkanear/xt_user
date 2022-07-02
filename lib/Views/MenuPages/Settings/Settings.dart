import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

import 'Notifications.dart';

class Setting_Page extends StatefulWidget {
  const Setting_Page({Key? key}) : super(key: key);

  @override
  State<Setting_Page> createState() => _Menu_PageState();
}

class _Menu_PageState extends State<Setting_Page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.BackGround.withOpacity(0.2)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width*1,
              height: height*0.06,
              margin: EdgeInsets.fromLTRB(width*0.05, height*0.035, width*0.05, 0),
                padding: EdgeInsets.fromLTRB(width*0.05, height*0.01, 0, 0),
              child: Text("Notifications",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16
                    ),)

            ),
          ),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.BackGround.withOpacity(0.2)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width*1,
              height: height*0.06,
              margin: EdgeInsets.fromLTRB(width*0.05, height*0.015, width*0.05, 0),
                padding: EdgeInsets.fromLTRB(width*0.05, height*0.01, 0, 0),
              child: Text("Social Account",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16
                    ),)
            ),
          ),
          InkWell(
            onTap: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: AppColors.btmbar,
                      title: Text("Delete Account",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.Google,
                            fontFamily: "Poppins"
                        ),),
                      content: Text("Are you sure you want to delete your Account?",
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
                  border: Border.all(width: 1, color: AppColors.BackGround.withOpacity(0.2)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width*1,
              height: height*0.06,
              margin: EdgeInsets.fromLTRB(width*0.05, height*0.015, width*0.05, 0),
              padding: EdgeInsets.fromLTRB(width*0.05, height*0.01, 0, 0),
              child:Text("Delete Account",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16
                    ),)
            ),
          ),
        ],
      ),
    );
  }
}
