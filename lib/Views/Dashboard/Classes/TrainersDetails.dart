import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

import '../Play_Video.dart';


class TrainerDetails extends StatefulWidget {
  const TrainerDetails({Key? key}) : super(key: key);

  @override
  State<TrainerDetails> createState() => _TrainerDetailsState();
}

class _TrainerDetailsState extends State<TrainerDetails> {
  List<String> names = <String>[
    'Indoor Cycling Workout', 'SPIN CLASS- THE ULTIMATE...',
    'SPIN CLASS- TOMB RAIDER...', 'Beginner Indoor Cycling W...', 'HIP HOP SPIN CLASS for BE...'
    , 'SPIN CLASS- FULL THROTTLE...', 'Fat Burning Indoor Cycling...',
    'Introduction to Rhythm Cy...','SPIN CLass- tabla hit-...',
    'Minute Rhythm Cycling Cl...'];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: width*1,
                height: height*0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/trainer1.png"),
                    fit: BoxFit.cover,
                  )
                ),
                child: Container(
                  width: width*1,
                  height: height*0.3,
                  color: AppColors.BackGround.withOpacity(0.5),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(width*0.55, height*0.23, 0, 0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.Google,
                          child:Image(
                              height: height*0.1,
                              width: width*0.1,fit: BoxFit.cover,
                              image: AssetImage("assets/images/heart.png", ))

                        ),
                        SizedBox(width: width*0.05,),
                        CircleAvatar(
                          backgroundColor: AppColors.Google,
                          child: Icon(Icons.email)
                        ),
                        SizedBox(width: width*0.05,),
                        CircleAvatar(
                          backgroundColor: AppColors.Google,
                          child: Icon(Icons.share)
                        ),
                        SizedBox(width: width*0.05,),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(width*0.05, height*0.01, 0, 0),
                width: width*1,
                child: Text("Spin Junkies",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.BackGround,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(width*0.05, height*0.02, 0, 0),
                width: width*1,
                child: Text("Classes",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.BackGround,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Container(
                child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(width*0.06, height*0.03, width*0.06, 0),
                            padding: EdgeInsets.all(10),
                            height: height*0.2,
                            width: width*0.9,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/trainer2.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: InkWell(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>playVideo()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: width*0.9,
                                    margin: EdgeInsets.fromLTRB(0, height*0.1, 0, 0),
                                    child: Text(names[index],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.Google,
                                        fontFamily: "Poppins",
                                      ),),
                                  ),
                                  Container(
                                    width: width*0.9,
                                    child: Text("Kaleigh Cohen",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.Google,
                                        fontFamily: "Poppins",
                                      ),),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: height*0.013,
                                        width: width*0.0075,
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: ImageIcon(
                                            AssetImage("assets/images/dot.png"),
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width*0.02,),
                                      Container(
                                        child: Text("beginner",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: AppColors.Google,
                                            fontFamily: "Poppins",
                                          ),),
                                      ),
                                      Container(
                                        height: height*0.024,
                                        width: width*0.015,
                                        margin: EdgeInsets.fromLTRB(width*0.35, 0, 0, 0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: ImageIcon(
                                            AssetImage("assets/images/clock.png"),
                                            color: AppColors.Button,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width*0.02,),
                                      Text("13:00",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.Google,
                                          fontFamily: "Poppins",
                                        ),),
                                      SizedBox(width: width*0.02,),
                                      Container(
                                        height: height*0.018,
                                        width: width*0.01,
                                        margin: EdgeInsets.fromLTRB(width*0.01, 0, 0, 0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: ImageIcon(
                                            AssetImage("assets/images/calendar.png"),
                                            color: AppColors.Button,
                                          ),
                                        ),
                                      ),SizedBox(width: width*0.03,),
                                      Text("Mon Jan 03",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.Google,
                                          fontFamily: "Poppins",
                                        ),),
                                    ],
                                  ),
                                ],
                              ),
                            ))
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
