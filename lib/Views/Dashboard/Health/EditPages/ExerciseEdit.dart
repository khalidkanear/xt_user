import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

class exerciseEdit extends StatefulWidget {
  const exerciseEdit({Key? key}) : super(key: key);

  @override
  State<exerciseEdit> createState() => _exercisePageState();
}

class _exercisePageState extends State<exerciseEdit> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  String date = "";
  DateTime selectedDate = DateTime.now();
  void _showTimePicker() {
    showTimePicker(
      helpText: "",
      builder: (context, child) {
        return Theme(
          data: ThemeData().copyWith(
            colorScheme: ColorScheme.dark(
                primary: AppColors.Button,
                surface: AppColors.Google,
                onSurface: AppColors.Button,
                onBackground: AppColors.BackGround.withOpacity(0.5)
            ),
          ),
          child: child!,
        );
      },
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }
  String? Exercisetype;
  String? distence;
  bool issearching = false;
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
        iconTheme: IconThemeData(
          color: AppColors.BackGround, //change your color here
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: height*0.08,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(width*0.06, width*0.05, width*0.06, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Text("Date",
                    style: TextStyle(
                      color: AppColors.BackGround.withOpacity(0.1),
                      fontSize: 14,
                      fontFamily: "Poppins",
                    ),),
                  Container(
                      margin: EdgeInsets.fromLTRB(width*0.37, 0, 0, 0),
                      child: Text("Time",
                        style: TextStyle(
                          color: AppColors.BackGround.withOpacity(0.1),
                          fontSize: 14,
                          fontFamily: "Poppins",
                        ),))
                ],
              ),
              Row(children: [
                Container(
                  width: width*0.4,
                  padding:EdgeInsets.fromLTRB(0, 0, width*0.14, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0// Background color
                    ),
                    onPressed: () {
                      _selectDate(context);
                    },
                    child: Text("${selectedDate.day}/${selectedDate.month}/${selectedDate.year}", style: TextStyle(
                      color: AppColors.BackGround,
                    ),),
                  ),
                ),
                SizedBox(width: width*0.07,),
                Container(
                  width: width*0.4,
                  child: InkWell(
                    onTap: _showTimePicker,
                    child: Text(
                      _timeOfDay.format(context).toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],),
              SizedBox(height: height*0.02,),
              Container(
                width: width*0.9,
                child: Text("Exercise Type",
                textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.BackGround.withOpacity(0.1),
                    fontSize: 14,
                    fontFamily: "Poppins",
                  ),),
              ),
              SizedBox(height: height*0.01,),
              DropdownButtonFormField(
                isExpanded: true,
                hint: Row(
                  children: const [
                    Text(
                      'Rowing',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                items: <String>['Rowing', 'Stretching','Cycling'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: Exercisetype,
                onChanged: (value) {
                  setState(() {
                    Exercisetype = value as String;
                  });
                },

              ),
              SizedBox(height: height*0.02,),
              Row(
                children: [
                  Text("Distance Covered",
                    style: TextStyle(
                      color: AppColors.BackGround.withOpacity(0.1),
                      fontSize: 14,
                      fontFamily: "Poppins",
                    ),),
                  Container(
                      margin: EdgeInsets.fromLTRB(width*0.13, 0, 0, 0),
                      child: Text("Units",
                        style: TextStyle(
                          color: AppColors.BackGround.withOpacity(0.1),
                          fontSize: 14,
                          fontFamily: "Poppins",
                        ),))
                ],
              ),
              SizedBox(height: height*0.01,),
              Row(children: [
                Container(
                  width: width*0.4,
                  child: TextField(
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.BackGround),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.Button, width: 2),
                      ),),
                  ),
                ),
                SizedBox(width: width*0.07,),
                Container(
                  width: width*0.4,
                  child: DropdownButtonFormField(
                    isExpanded: true,
                    hint: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'km',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    items: <String>['km', 'miles',].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    value: distence,
                    onChanged: (value) {
                      setState(() {
                        distence = value as String;
                      });
                    },

                  ),
                ),
              ],),
              SizedBox(height: height*0.02,),
              Container(
                width: width*0.9,
                child: Text("Calories Burned",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.BackGround.withOpacity(0.1),
                    fontSize: 14,
                    fontFamily: "Poppins",
                  ),),
              ),
              TextField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  suffixText: "kcal",
                  suffixStyle: TextStyle(
                    color: AppColors.BackGround.withOpacity(0.5),
                    fontSize: 14,
                    fontFamily: "Poppins",
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.BackGround),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.Button, width: 2),
                  ),),
              ),
              SizedBox(height: height*0.02,),
              Container(
                width: width*0.9,
                child: Text("Heart Rate",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.BackGround.withOpacity(0.1),
                    fontSize: 14,
                    fontFamily: "Poppins",
                  ),),
              ),
              TextField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  suffixText: "bmp",
                  suffixStyle: TextStyle(
                    color: AppColors.BackGround.withOpacity(0.5),
                    fontSize: 14,
                    fontFamily: "Poppins",
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.BackGround),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.Button, width: 2),
                  ),),
              ),
              SizedBox(height: height*0.02,),
              ElevatedButton(
                child: Text("SUBMIT",
                  style: TextStyle(
                      fontFamily: "Poppins"
                  ),
                  textAlign: TextAlign.center,),
                onPressed: (){
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColors.Button,
                ),
              ),
            ],
          ),
        ),
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
    path.lineTo(0, height-65);
    path.quadraticBezierTo(width, height-65, width, height-65);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}