import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

class foodEditPage extends StatefulWidget {
  const foodEditPage({Key? key}) : super(key: key);

  @override
  State<foodEditPage> createState() => _exercisePageState();
}

class _exercisePageState extends State<foodEditPage> {
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
                onSurface: AppColors.Button,
              surface: AppColors.Google,
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
  String? distence;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(children: [
              Image.asset("assets/images/food.jpg"),
              Container(
                  margin: EdgeInsets.fromLTRB(width*0.06, height*0.02, 0, 0),
                  child: InkWell(
                      onTap:(){ Navigator.pop(context);},
                      child: Icon(Icons.cancel, color:Colors.white,)))
            ],),
            SizedBox(height: height*0.02,),
            Card(
              margin: EdgeInsets.fromLTRB(width*0.06, 0, width*0.06, 0),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text("Date",
                            style: TextStyle(
                              color: AppColors.BackGround.withOpacity(0.5),
                              fontSize: 14,
                              fontFamily: "Poppins",
                            ),),
                        ),
                        Container(
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
                        Container(
                            margin: EdgeInsets.fromLTRB(width*0.02, 0, 0, 0),
                            child: Text("Time",
                              style: TextStyle(
                                color: AppColors.BackGround.withOpacity(0.5),
                                fontSize: 14,
                                fontFamily: "Poppins",
                              ),)),
                        SizedBox(width: width*0.02,),
                        Container(
                          child: InkWell(
                            onTap: _showTimePicker,
                            child: Text(
                              _timeOfDay.format(context).toString(),
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(children: [
                      Container(
                        child: Text("Meal",
                          style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.5),
                            fontSize: 14,
                            fontFamily: "Poppins",
                          ),),
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
                                  'Breakfast',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          items: <String>['Breakfast', 'Lunch','Snack','Dinner'].map((String value) {
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
                    Row(
                      children: [
                        Container(
                          child: Text("Caories",
                            style: TextStyle(
                              color: AppColors.BackGround.withOpacity(0.5),
                              fontSize: 14,
                              fontFamily: "Poppins",
                            ),),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(width*0.02, 0, 0, 0),
                          width: width*0.2,
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
                        Container(
                            margin: EdgeInsets.fromLTRB(width*0.11, 0, 0, 0),
                            child: Text("Proteins",
                              style: TextStyle(
                                color: AppColors.BackGround.withOpacity(0.5),
                                fontSize: 14,
                                fontFamily: "Poppins",
                              ),)),
                        Container(
                          margin: EdgeInsets.fromLTRB(width*0.02, 0, 0, 0),
                          width: width*0.2,
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
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text("Carbs",
                            style: TextStyle(
                              color: AppColors.BackGround.withOpacity(0.5),
                              fontSize: 14,
                              fontFamily: "Poppins",
                            ),),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(width*0.05, 0, 0, 0),
                          width: width*0.2,
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
                        Container(
                            margin: EdgeInsets.fromLTRB(width*0.11, 0, 0, 0),
                            child: Text("Fats",
                              style: TextStyle(
                                color: AppColors.BackGround.withOpacity(0.5),
                                fontSize: 14,
                                fontFamily: "Poppins",
                              ),)),
                        Container(
                          margin: EdgeInsets.fromLTRB(width*0.09, 0, 0, 0),
                          width: width*0.2,
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
                      ],
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
            )
          ],
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