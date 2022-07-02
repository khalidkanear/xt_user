import'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.BackGround,), onPressed: () {
          Navigator.pop(context);
        },
        ),
        backgroundColor: AppColors.Google,
        title: Container(
          child: Row(
            children: [
              CircleAvatar(
                radius: height * 0.02,
                backgroundImage: AssetImage('assets/images/trainer1.png'),
              ),
              SizedBox(width: width*0.02,),
              Text("Aldy Hira",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.BackGround,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.Google.withOpacity(0.9),
      body: Column(
        children: [
          Container(
            width: width*1,
            height: height*0.824,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.Google,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(width * 0.03, height*0.02, 0, 0),
                  child: Text("test",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.BackGround,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Container(
                  color: AppColors.Google,
                  margin: EdgeInsets.fromLTRB(width * 0.03, height*0.02, 0, 0),
                  padding: EdgeInsets.all(10),
                  child: Text("test",
                    style: TextStyle(
                    fontSize: 14,
                    color: AppColors.BackGround,
                    fontFamily: "Poppins",
                  ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(width * 0.03, 0, 0, 0),
            height: height*0.07,
            color: AppColors.Google,
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
                  width: width*0.73,
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
    );
  }
}
