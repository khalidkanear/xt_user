import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Health/BarChart.dart';

import '../editPages/SleepEditPage.dart';

class sleep extends StatefulWidget {
  const sleep({Key? key}) : super(key: key);

  @override
  State<sleep> createState() => _exercisePageState();
}

class _exercisePageState extends State<sleep> {
  bool issearching = false;
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: ClipPath(
            clipper: CustomBar(),
            child:  Container( width: 180, color: AppColors.Button,)
        ),
        leading:  IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.BackGround,), onPressed: () {
          Navigator.pop(context);
        },
        ),
        automaticallyImplyLeading: false,
        title:  Text('Sleep',
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
              color: AppColors.BackGround,
              fontWeight: FontWeight.bold
          ),),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0,0, width*0.06, 0),
            child: IconButton(
              icon: Icon(Icons.add, color: AppColors.Button,size: height*0.035,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sleepEditPage()));
              },
            ),
          ),
        ],
        iconTheme: IconThemeData(
          color: AppColors.BackGround, //change your color here
        ),
        centerTitle: true,
        backgroundColor: AppColors.Google,
        toolbarHeight: height*0.06,
        elevation: 0,
      ),
      body:  Column(
        children: [
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0// Background color
              ),
              onPressed: () {
                _selectDate(context);
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(width*0.35, height*0.02, 0, 0),
                    child: Row(
                      children: [
                        Text("${selectedDate.day}/${selectedDate.month}/${selectedDate.year}", style: TextStyle(
                            color: AppColors.BackGround,
                            fontFamily: "Poppins",
                            fontSize: 14
                        ),),
                        Icon(Icons.arrow_drop_down, color: AppColors.BackGround,),
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.01,),
                  Container(
                    margin: EdgeInsets.fromLTRB(width*0.285, 0, 0, 0),
                    child: Row(
                      children: [
                        Text("(${selectedDate.day}/${selectedDate.month}/${selectedDate.year} - ${selectedDate.day}/${selectedDate.month}/${selectedDate.year})",
                          style: TextStyle(
                              color: AppColors.BackGround.withOpacity(0.5),
                              fontFamily: "Poppins",
                              fontSize: 12
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: height*0.4,
            child: barChart(),
          ),
          Container(
            height: height*0.35,
            width: width*1,
            color: AppColors.BackGround.withOpacity(0.1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, height*0.05, 0, 0),
                      width: width*0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Minimum sleep",
                            style: TextStyle(
                                color: AppColors.BackGround.withOpacity(0.5),
                                fontFamily: "Poppins",
                                fontSize: 10
                            ),),
                          SizedBox(height: height*0.01,),
                          Text("0 hours",
                            style: TextStyle(
                                color: AppColors.BackGround,
                                fontFamily: "Poppins",
                                fontSize: 10
                            ),)
                        ],
                      ),),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, height*0.05, 0, 0),
                      width: width*0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.BackGround.withOpacity(0.7),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Average sleep",
                            style: TextStyle(
                                color: AppColors.Google.withOpacity(0.5),
                                fontFamily: "Poppins",
                                fontSize: 10
                            ),),
                          SizedBox(height: height*0.01,),
                          Text("0 hours",
                            style: TextStyle(
                                color: AppColors.Google,
                                fontFamily: "Poppins",
                                fontSize: 10
                            ),)
                        ],
                      ),),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, height*0.05, 0, 0),
                      width: width*0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Maximum sleep",
                            style: TextStyle(
                                color: AppColors.BackGround.withOpacity(0.5),
                                fontFamily: "Poppins",
                                fontSize: 10
                            ),),
                          SizedBox(height: height*0.01,),
                          Text("0 hours",
                            style: TextStyle(
                                color: AppColors.BackGround,
                                fontFamily: "Poppins",
                                fontSize: 10
                            ),)
                        ],
                      ),)
                  ],
                ),
                Container(
                  width: width*0.9,
                  margin: EdgeInsets.fromLTRB(width*0.02, height*0.03, 0, 0),
                  child: Text("Your weight is the most crucial information\n"
                      "display on your screens. Through Xstream, you\n"
                      "can review your daily, weekly, monthly or yearly\n"
                      "progress. Extract accurate information regarding\n"
                      "your body fat and skeletal muscle mass has been\n"
                      "stated to further guide you into developing a more\n"
                      "effective plans",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.7),
                        fontFamily: "Poppins",
                        fontSize: 13
                    ),),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      helpText: "",
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
      builder: (context, child) {
        return Theme(
          data: ThemeData().copyWith(
            colorScheme: ColorScheme.dark(
                primary: AppColors.Button,
                surface: AppColors.Button,
                onSurface: AppColors.BackGround
            ),

          ),
          child: child!,
        );
      },
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}

class CustomBar extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height-50);
    path.quadraticBezierTo(width, height-50, width, height-50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}