import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

import 'DeviceConnection.dart';

class Devices extends StatelessWidget {
  const Devices({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Devices_STF();
  }
}

class Devices_STF extends StatefulWidget {
  const Devices_STF({Key? key}) : super(key: key);
  @override
  _Devices_STFState createState() => _Devices_STFState();
}
class _Devices_STFState extends State<Devices_STF> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Container(
            height: height*0.13,
            width: width*0.9,
            margin: EdgeInsets.fromLTRB(width*0.1, height*0.01, width*0.1, 0),
            child: Card(
              elevation: 1.5,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.BackGround.withOpacity(0.05), width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: width*0.6,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(width*0.02, height*0.02, 0, 0),
                          child: Text("Xstream Watch 3",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.BackGround,
                              fontSize: 16,
                              fontFamily: "Poppins",
                            ),),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(width*0.03, height*0.01, 0, 0),
                          width: width*0.6,
                        child: Row(
                          children: [
                            Text("Smart Watch",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.BackGround,
                                fontSize: 12,
                                fontFamily: "Poppins",
                              ),),
                            SizedBox(width: width*0.015,),
                            Text("unpair?",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.Button,
                                fontSize: 12,
                                fontFamily: "Poppins",
                              ),),
                          ],
                        )
                      )
                    ],
                  ),
                  Container(
                    child: ImageIcon(
                      AssetImage("assets/images/Watch.dev.png"),
                      color: AppColors.BackGround,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: height*0.13,
            width: width*0.9,
            margin: EdgeInsets.fromLTRB(width*0.1, height*0.01, width*0.1, 0),
            child: Card(
              elevation: 1.5,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.BackGround.withOpacity(0.05), width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: width*0.6,
                        margin: EdgeInsets.fromLTRB(width*0.03, height*0.02, 0, 0),
                        child: Text("Add",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround,
                            fontSize: 16,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(width*0.03, height*0.01, 0, 0),
                          width: width*0.6,
                          child:
                              Text("Support multiple devices",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.BackGround,
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                ),
                          )
                      )
                    ],
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.Button,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>deviceConnection()));
                        },
                        child: Icon(
                          Icons.add,
                          color: AppColors.Google,
                          size: 24.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}