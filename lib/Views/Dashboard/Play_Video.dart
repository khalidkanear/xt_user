import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

import 'Play_Video_Landscape.dart';

class playVideo extends StatefulWidget {
  const playVideo({Key? key}) : super(key: key);

  @override
  State<playVideo> createState() => _playVideoState();
}

class _playVideoState extends State<playVideo> {
  bool changeHeartColor = true;
  bool changeSubscribeColor = true;
  bool changeSave = true;
  var heart = 2;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height*0.3,
                width: width*1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/trainer1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  color: AppColors.BackGround.withOpacity(0.8),
                  margin: EdgeInsets.fromLTRB(0, height*0.25, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.play_arrow, color: AppColors.Google,),
                    Text("00:14",
                    style: TextStyle(color: AppColors.Google),),
                    Container(
                      color: AppColors.Google.withOpacity(0.3),
                      height: height*0.003,
                      width: width*0.5,
                    ),
                    Text("30:30",style: TextStyle(color: AppColors.Google),),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>playLandscape()));
                        },
                        child: Icon(Icons.crop_landscape, color: AppColors.Google,))
                  ],),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(width*0.05, height*0.02, width*0.05, 0),
                      child: Row(
                        children: [
                          Container(
                            height: height*0.1,
                            width: width*0.2,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/trainer1.png"),
                            ),
                          ),
                          SizedBox(width: width*0.02,),
                          Column(
                            children: [
                              Text("SPIN CLASS-FULL THROTTLE - INDOOR\n"
                                  "CYCLING WORKOUT",
                                style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                              ),),
                              Container(
                                width: width*0.67,
                                child: Text("Kirsten Allen",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                fontFamily: "Poppins",
                                  fontSize: 11
                              ),),),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: width*0.27,),
                  Icon(Icons.remove_red_eye, color: AppColors.Button,size: height*0.025),
                  Text("7",style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Poppins",
                  ),),
                  InkWell(
                    onTap: _toggleHeart,
                    child: changeHeartColor == true? ImageIcon(
                      AssetImage("assets/images/heart.png"),
                      size: height*0.045,
                      color: Colors.red,
                    ):ImageIcon(
                      AssetImage("assets/images/heart.png"),
                      size: height*0.045,
                      color: Colors.grey,
                    ),
                  ),
                  if (changeHeartColor == true) ...[
                    Text("2",style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Poppins",
                    ),),
                  ] else ...[
                    Text("2",style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Poppins",
                    ),),
                  ],
                  SizedBox(width: width*0.01,),
                  InkWell(
                      onTap: _toggleSave,
                      child: changeSave==true? Icon(Icons.format_line_spacing_sharp, size: height*0.025):
                      Icon(Icons.format_line_spacing_sharp, color: Colors.green, size: height*0.025)),
                  SizedBox(width: width*0.01,),
                  changeSave == true? Text("save",style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Poppins",
                  ),):
                  Text("saved",style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Poppins",
                  ),),
                  SizedBox(width: width*0.18,),
                  InkWell(
                    onTap: _toggleSubscribe,
                    child: changeSubscribeColor == true? Text("subscribe", style: TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                      fontFamily: "Poppins",
                    ),):Text("subscribed", style: TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                      fontFamily: "Poppins",
                    ),),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: width*0.05,),
                  Text("Comments", style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: width*0.01,),
                  Text("1", style: TextStyle(
                    fontFamily: "Poppins",
                  ),)
                ],
              ),
              Container(
                height: height*0.08,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.25),
                    borderRadius: BorderRadius.only(
                      topLeft:  Radius.circular(20.0),
                      topRight: Radius.circular(3.0),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),),
                margin: EdgeInsets.fromLTRB(width*0.05, height*0.02, width*0.1, 0),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/video_profile_icon.png"),
                      size: height*0.07,
                      color: AppColors.BackGround,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(width*0.02, height*0.01, 0, 0),
                      child: Column(
                        children: [
                          Text("Anonymous",
                            style: TextStyle(
                              color: AppColors.Google,
                              fontFamily: "Poppins",
                            ),),
                          SizedBox(height: height*0.01,),
                          Container(
                              width: width*0.17,
                              child: Text("hi",
                              textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.Google,
                                  fontFamily: "Poppins",
                                ),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: width*0.17,),
                    Column(
                      children: [
                        SizedBox(height: height*0.01,),
                        Text("5 minutes ago",
                          style: TextStyle(
                            color: AppColors.Google,
                            fontFamily: "Poppins",
                          ),),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(width*0.05, height*0.32, width*0.05, 0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.pinkAccent,
                      child: Text("WA"),
                    ),
                    SizedBox(width: width*0.02,),
                    Container(
                      color: AppColors.BackGround.withOpacity(0.1),
                      padding: EdgeInsets.fromLTRB(width*0.02, 0, 0, 0),
                      height: height*0.05,
                      width: width*0.66,
                      child: TextField(
                        cursorColor: AppColors.Button,

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter a Comment',
                        ),
                      ),
                    ),
                    SizedBox(width: width*0.02,),
                    Icon(Icons.send, color: AppColors.Button, size: height*0.04,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _toggleHeart(){
    setState(() {
       changeHeartColor = !changeHeartColor;
    });
  }
  void _toggleSubscribe(){
    setState(() {
      changeSubscribeColor = !changeSubscribeColor;
    });
  }
  void _toggleSave(){
    setState(() {
      changeSave = !changeSave;
    });
  }
}

