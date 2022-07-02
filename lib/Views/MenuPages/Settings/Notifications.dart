import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _Menu_PageState();
}

class _Menu_PageState extends State<Notifications> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications",
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
          Container(
            width: width*1,
            height: height*0.06,
            padding: EdgeInsets.fromLTRB(width*0.05, 0, 0, 0),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.BackGround.withOpacity(0.2)),),
            child: Row(
              children: [
                Text("Email"),
                Container(
                  margin: EdgeInsets.fromLTRB(width*0.65, 0, 0, 0),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: AppColors.Button,
                    activeColor: AppColors.Button,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width*1,
            height: height*0.06,
            padding: EdgeInsets.fromLTRB(width*0.05, 0, 0, 0),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.BackGround.withOpacity(0.2)),),
            child: Row(
              children: [
                Text("SMS"),
                Container(
                  margin: EdgeInsets.fromLTRB(width*0.65, 0, 0, 0),
                  child: Switch(
                    value: isSwitched1,
                    onChanged: (value) {
                      setState(() {
                        isSwitched1 = value;
                        print(isSwitched1);
                      });
                    },
                    activeTrackColor: AppColors.Button,
                    activeColor: AppColors.Button,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.65,),
          Container(
            width: width*0.9,
            child: ElevatedButton(
              child: Text(("SUBMITT"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.Google,
                  )),
              style: ElevatedButton.styleFrom(
                primary: AppColors.Button,
                padding: EdgeInsets.all(10),
              ),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
