import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Health/graphPages/Exercise.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Health/graphPages/FoodPage.dart';

import 'graphPages/HeartRate.dart';
import 'graphPages/Sleep.dart';
import 'graphPages/Weight.dart';

class Health extends StatelessWidget {
  const Health({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Health_STF();
  }
}

class Health_STF extends StatefulWidget {
  const Health_STF({Key? key}) : super(key: key);

  @override
  _Health_STFState createState() => _Health_STFState();
}

class _Health_STFState extends State<Health_STF> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>exercisePage()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, height*0.02, 0, 0),
                  padding: EdgeInsets.all(10),
                  width: width*0.4,
                  height: height*0.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black12,
                      width: 1,)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: width*0.4,
                        child: Text("Exercise records",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      Container(
                        width: width*0.4,
                        child: Text("Stay active, stay healthy",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      ImageIcon(
                        AssetImage("assets/images/noun_line chart.png"),
                        color: Colors.lightBlue,
                        size: 85,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>heartRate()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, height*0.02, 0, 0),
                  padding: EdgeInsets.all(10),
                  width: width*0.4,
                  height: height*0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black12,
                        width: 1,)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: width*0.4,
                        child: Text("Heart rate",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      Container(
                        width: width*0.4,
                        child: Text("Check your heart rate",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      Container(

                        child: ImageIcon(
                          AssetImage("assets/images/noun_heart rate.png"),
                          color: Colors.red,
                          size: 80,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>sleep()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, height*0.02, 0, 0),
                  padding: EdgeInsets.all(10),
                  width: width*0.4,
                  height: height*0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black12,
                        width: 1,)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: width*0.4,
                        child: Text("Sleep",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      Container(
                        width: width*0.4,
                        child: Text("Check your sleep quality",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, height*0.008, 0, 0),
                        child: ImageIcon(
                          AssetImage("assets/images/noun_sleep.png"),
                          color: Colors.green,
                          size: 70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>weight()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, height*0.02, 0, 0),
                  padding: EdgeInsets.all(10),
                  width: width*0.4,
                  height: height*0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black12,
                        width: 1,)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: width*0.4,
                        child: Text("Weight",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      Container(
                        width: width*0.4,
                        child: Text("Stay on tap of your weight",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, height*0.01, 0, 0),
                        child: ImageIcon(
                          AssetImage("assets/images/noun_Weight.png"),
                          color: Colors.deepPurple,
                          size: 70 ,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>foodPage()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, height*0.02, width*0.5, 0),
                  padding: EdgeInsets.all(10),
                  width: width*0.4,
                  height: height*0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black12,
                        width: 1,)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: width*0.4,
                        child: Text("Food Intake",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      Container(
                        width: width*0.4,
                        child: Text("Monitor your daily nitritions",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            fontFamily: "Poppins",
                          ),),
                      ),
                      ImageIcon(
                        AssetImage("assets/images/noun_Nutrition.png"),
                        color: Colors.deepPurpleAccent,
                        size: 85,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: height*0.2,
          )
        ],
      ),
    );
  }
}
