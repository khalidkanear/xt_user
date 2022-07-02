import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Health/BarChart.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Health/editPages/ExerciseEdit.dart';

class exercisePage extends StatefulWidget {
  const exercisePage({Key? key}) : super(key: key);

  @override
  State<exercisePage> createState() => _exercisePageState();
}

class _exercisePageState extends State<exercisePage> {
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
        title:  Text('Exercise',
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>exerciseEdit()));
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
          body: Column(
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
            height: height*0.3,
            width: width*1,
            color: AppColors.BackGround.withOpacity(0.1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, height*0.07, 0, 0),
                      width: width*0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.BackGround.withOpacity(0.7),
                      ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text("Average Distance",
                          style: TextStyle(
                              color: AppColors.Google,
                              fontFamily: "Poppins",
                              fontSize: 12
                          ),),
                        SizedBox(height: height*0.01,),
                        Text("5.00 km",
                          style: TextStyle(
                              color: AppColors.Google,
                              fontFamily: "Poppins",
                              fontSize: 12
                          ),)
                      ],
                    ),),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, height*0.07, 0, 0),
                      width: width*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.Google,
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Average Distance",
                            style: TextStyle(
                                color: AppColors.BackGround,
                                fontFamily: "Poppins",
                                fontSize: 12
                            ),),
                          SizedBox(height: height*0.01,),
                          Text("5.00 km",
                            style: TextStyle(
                                color: AppColors.BackGround,
                                fontFamily: "Poppins",
                                fontSize: 12
                            ),)
                        ],
                      ),)
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, height*0.03, 0, 0),
                  child: Text("Find out how many distance you have covered on\n"
                      "a daily, weekly, or yearly basis through our\n"
                      "app. Moreover, you can also compare your average\n"
                      "distance against the maximum distance you cover",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.7),
                        fontFamily: "Poppins",
                        fontSize: 12.5
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