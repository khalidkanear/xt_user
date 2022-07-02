import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

class Up_Subscription extends StatefulWidget {
  const Up_Subscription({Key? key}) : super(key: key);

  @override
  State<Up_Subscription> createState() => _Up_SubscriptionState();
}

class _Up_SubscriptionState extends State<Up_Subscription> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.Button,
        toolbarHeight: height*0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: height*1,
        width: width*1,
        color: AppColors.subscription,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(width*0.06, height*0.04, width*0.06, 0),
              padding: EdgeInsets.fromLTRB(width*0.03, height*0.01, width*0.03, 0),
              height: height*0.335,
              width: width*0.9,
              decoration: BoxDecoration(
                  color: AppColors.subscription,
                  border: Border.all(width: width*0.005, color: AppColors.BackGround.withOpacity(0.2)),
                  boxShadow: [
                  BoxShadow(
                  color: AppColors.BackGround.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 05,// changes position of shadow
                  ),
                  ],),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Current Subscription",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins",
                        color: AppColors.Google
                    ),),
                  SizedBox(height: height*0.025,),
                  Text("Package",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Poppins",
                        color: AppColors.Google
                    ),),
                  SizedBox(height: height*0.025,),
                  Text("Expiry date",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Poppins",
                        color: AppColors.Google
                    ),),
                  SizedBox(height: height*0.025,),
                  Text("Remaining Prerecorded Video",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Poppins",
                        color: AppColors.Google
                    ),),
                  SizedBox(height: height*0.025,),
                  Text("Remaining Live Video",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Poppins",
                        color: AppColors.Google
                    ),),
                  SizedBox(height: height*0.025,),
                  Container(
                    height: height*0.04,
                    width: width*1,
                    child: ElevatedButton(
                      child: Text("RENEW",
                        style: TextStyle(
                          color: AppColors.Google,
                            fontFamily: "Poppins",
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
            SizedBox(height: height*0.025,),
            Container(
              margin: EdgeInsets.fromLTRB(width*0.06,0, 0, 0),
              child: Text("Subscription History",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    color: AppColors.Google
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
