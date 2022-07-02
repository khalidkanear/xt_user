import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

class HipHop extends StatelessWidget {
  const HipHop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HipHop_STF();
  }
}

class HipHop_STF extends StatefulWidget {
  const HipHop_STF({Key? key}) : super(key: key);

  @override
  _HipHop_STFState createState() => _HipHop_STFState();
}

class _HipHop_STFState extends State<HipHop_STF> {
  List<String> names = <String>[
    'New Seassion', 'This is Hip Hop',];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width*1,
            margin: EdgeInsets.fromLTRB(width*0.05, height*0.03, width*0.05, 0),
            child: Text("Hip Hop Sessions",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.BackGround.withOpacity(0.7),
                fontFamily: "Poppins",
              ),),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(width*0.05, 0, width*0.05, 0),
              height: height*0.35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (index == 0) ...[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.brown[200],
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.all(10),
                            width: width*0.35,
                            height: height*0.27,
                            child: Column(
                              children: [
                                SizedBox(height: height*0.197,),
                                Container(
                                  width: width*0.35,
                                  child: Text(names[index],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.Google,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ImageIcon(
                                      AssetImage("assets/images/clock.png"),
                                      color: AppColors.Button,
                                      size: height*0.02,
                                    ),
                                    Text("19:00",
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.Google,
                                      fontFamily: "Poppins",
                                    ),),
                                    SizedBox(width: width*0.065,),
                                    Icon(Icons.calendar_today, color: AppColors.Button, size: height*0.015,),
                                    Text("Thu Nov 18",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8,
                                        color: AppColors.Google,
                                        fontFamily: "Poppins",
                                      ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ] else if(index == 1)...[
                          Container(
                            margin: EdgeInsets.fromLTRB(width*0.03, 0,0, 0),
                            decoration: BoxDecoration(
                                color: Colors.brown[200],
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.all(10),
                            width: width*0.35,
                            height: height*0.27,
                            child: Column(
                              children: [
                                SizedBox(height: height*0.197,),
                                Container(
                                  width: width*0.35,
                                  child: Text(names[index],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.Google,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ImageIcon(
                                      AssetImage("assets/images/clock.png"),
                                      color: AppColors.Button,
                                      size: height*0.02,
                                    ),
                                    Text("19:00",
                                      style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.Google,
                                        fontFamily: "Poppins",
                                      ),),
                                    SizedBox(width: width*0.065,),
                                    Icon(Icons.calendar_today, color: AppColors.Button, size: height*0.015,),
                                    Text("Thu Nov 18",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8,
                                        color: AppColors.Google,
                                        fontFamily: "Poppins",
                                      ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ],
                    );
                  }
              )
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [


              ],
            ),
          ),
        ],
      ),
    );
  }
}

