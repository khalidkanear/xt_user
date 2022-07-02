

import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Classes/Live_Sessions/Live.dart';
import '../Play_Video.dart';


class VideoList extends StatelessWidget {
  const VideoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VideoList_STF();
  }
}

class VideoList_STF extends StatefulWidget {
  const VideoList_STF({Key? key}) : super(key: key);

  @override
  _VideoList_STFState createState() => _VideoList_STFState();
}

class _VideoList_STFState extends State<VideoList_STF> {
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
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(width*0.05, width*0.05, 0, 0),
                child: Text("Upcoming Live Sessions",
                  style: TextStyle(
                    color: AppColors.BackGround.withOpacity(0.7),
                    fontFamily: "Poppins",
                  ),),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Live()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(width*0.22, height*0.02, width*0.05, 0),
                  child: Text("view more >",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.Button,
                      fontFamily: "Poppins",
                    ),),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width*0.05, height*0.015, width*0.05, 0),
            child: Text("No Upcoming Sessions",
              style: TextStyle(
                color: AppColors.BackGround.withOpacity(0.7),
                fontFamily: "Poppins",
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(width*0.05, height*0.015, 0, 0),
                child: Text("My Recent videos",
                  style: TextStyle(
                    color: AppColors.BackGround.withOpacity(0.7),
                    fontFamily: "Poppins",
                  ),),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoList()));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(width*0.34, height*0.015, width*0.05, 0),
                  child: Text("view more >",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColors.Button,
                      fontFamily: "Poppins",
                    ),),
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(width*0.05, height*0.03, width*0.05, 0),
            height: height*0.155,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (_, i) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/trainer2.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: EdgeInsets.fromLTRB(0, 0, width*0.05, 0),
                    padding: EdgeInsets.fromLTRB(width*0.02, height*0.01, width*0.02, height*0.01),
                    width: width*0.6,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>playVideo()));
                      },
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              width: width*width*0.6,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(width*0.4, 0, 0, 0),
                                color: AppColors.Button,
                                padding: EdgeInsets.fromLTRB(0, height*0.005, width*0.02, height*0.005),
                                child: Text("30 min",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.Google,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              )),
                          SizedBox(height: height*0.01,),
                          Container(
                            width: width*width*0.6,
                            child: Text(names[i],
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.Google,
                                fontSize: 14,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Container(
                            width: width*width*0.6,
                            child: Text("Kayleigh Cohen",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColors.Google,
                                fontFamily: "Poppins",
                              ),
                            ),
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
                              Text("Intermediate",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.Google,
                                  fontFamily: "Poppins",
                                ),),
                              Container(
                                height: height*0.034,
                                width: width*0.016,
                                margin: EdgeInsets.fromLTRB(width*0.2, 0, 0, 0),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: ImageIcon(
                                    AssetImage("assets/images/heart.png"),
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.02,),
                              Text("1",
                                style: TextStyle(
                                  color: AppColors.Google,
                                  fontFamily: "Poppins",
                                ),),
                              SizedBox(width: width*0.03,),
                              Container(
                                height: height*0.034,
                                width: width*0.016,
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: ImageIcon(
                                    AssetImage("assets/images/eye.png"),
                                    color: AppColors.Button,
                                  ),
                                ),
                              ),SizedBox(width: width*0.03,),
                              Text("9",
                                style: TextStyle(
                                  color: AppColors.Google,
                                  fontFamily: "Poppins",
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }
            )
          )

        ],
      )
    );
  }
}

