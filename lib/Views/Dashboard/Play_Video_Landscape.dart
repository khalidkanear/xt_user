import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

class playLandscape extends StatefulWidget {
  const playLandscape({Key? key}) : super(key: key);

  @override
  State<playLandscape> createState() => _playLandscapeState();
}

class _playLandscapeState extends State<playLandscape> {
  bool changeHeartColor = true;
  bool changeSubscribeColor = true;
  bool changeScreen = true;
  bool changeSave = true;
  var heart = 2;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: _toggleScreen,
          child: Container(
            height: height*1,
            width: width*1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/trainer1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(width*0.03, height*0.05, 0, 0),
                    child: Image.asset("assets/images/logo.png",height:height* 0.12,)),
                if (changeScreen == true) ...[
                  Container(
                    height: height*0.1,
                    color: AppColors.BackGround.withOpacity(0.8),
                    margin: EdgeInsets.fromLTRB(0, height*0.85, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.play_arrow, color: AppColors.Google,),
                        Text("00:14",
                          style: TextStyle(color: AppColors.Google),),
                        Container(
                          color: AppColors.Google.withOpacity(0.3),
                          height: height*0.003,
                          width: width*0.75,
                        ),
                        Text("30:30",style: TextStyle(color: AppColors.Google),),
                        InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.crop_landscape, color: AppColors.Google,))
                      ],),
                  ),
                ] else ...[
                  Container(
                      margin: EdgeInsets.fromLTRB(width*0.95, height*0.02, 0, 0),
                      child: Icon(Icons.more_vert, color: AppColors.Google,)),
                  Container(
                      margin: EdgeInsets.fromLTRB(width*0.7, height*0.02, 0, 0),
                      child: Text("Comments",style: TextStyle(color: AppColors.Google),)),
                  Container(
                    width: width*0.65,
                    height: height*0.18,
                      margin: EdgeInsets.fromLTRB(width*0.02, height*0.75, 0, 0),
                    child:Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/trainer1.png"),
                        ),
                        SizedBox(width: width*0.02,),
                        Column(
                          children: [
                            Container(
                              child: Text("SPIN CLASS-FULL THROTTLE - INDOOR"
                                  "CYCLING WORKOUT",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: AppColors.Google,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            Container(
                              width: width*0.53,
                              child: Text("Kirsten Allen",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: AppColors.Google,
                                    fontFamily: "Poppins",
                                    fontSize: 11
                                ),),),
                            Container(
                              width: width*0.53,
                              child: Row(
                                children: [
                                  Icon(Icons.remove_red_eye, color: AppColors.Button,size: height*0.045),
                                  Text("7",style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.Google,
                                    fontFamily: "Poppins",
                                  ),),
                                  InkWell(
                                    onTap: _toggleHeart,
                                    child: changeHeartColor == true? ImageIcon(
                                      AssetImage("assets/images/heart.png"),
                                      size: height*0.075,
                                      color: Colors.red,
                                    ):ImageIcon(
                                      AssetImage("assets/images/heart.png"),
                                      size: height*0.075,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  if (changeHeartColor == true) ...[
                                    Text("2",style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.Google,
                                      fontFamily: "Poppins",
                                    ),),
                                  ] else ...[
                                    Text("2",style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                        color: AppColors.Google
                                    ),),
                                  ],
                                  SizedBox(width: width*0.01,),
                                  InkWell(
                                      onTap: _toggleSave,
                                      child: changeSave==true? Icon(Icons.format_line_spacing_sharp,color: AppColors.Google, size: height*0.04):
                                      Icon(Icons.format_line_spacing_sharp, color: Colors.green, size: height*0.04)),
                                  SizedBox(width: width*0.01,),
                                  changeSave == true? Text("save",style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.Google,
                                    fontFamily: "Poppins",
                                  ),):
                                  Text("saved",style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.Google,
                                    fontFamily: "Poppins",
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(width*0.7, height*0.85, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          color: AppColors.BackGround.withOpacity(0.1),
                          padding: EdgeInsets.fromLTRB(width*0.02, 0, 0, 0),
                          height: height*0.08,
                          width: width*0.25,
                          child: TextField(
                            cursorColor: AppColors.Button,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.Google,
                              border: InputBorder.none,
                              hintText: 'Enter a Comment',
                            ),
                          ),
                        ),
                        SizedBox(width: width*0.02,),
                        Icon(Icons.send, color: AppColors.Button, size: height*0.05,)
                      ],
                    ),
                  ),
                ],

              ],
            ),
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
  void _toggleScreen(){
    setState(() {
      changeScreen = !changeScreen;
    });
  }
}
