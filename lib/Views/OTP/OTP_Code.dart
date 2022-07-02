import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import '../LogIn/LogIn.dart';

class OTP_email extends StatefulWidget {
  @override
  _OTP_emailState createState() => _OTP_emailState();
}

class _OTP_emailState extends State<OTP_email> {
  bool _onEditing = true;
  late String _code;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              invertColors: false,
              image: AssetImage(
                "assets/images/bg.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
              tileMode: TileMode.repeated,
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                  width: width,
                  height: height,
                  color: Colors.black.withOpacity(0.7),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: width * 1,
                          margin: EdgeInsets.fromLTRB(
                              width * 0.06, height * 0.15, width * 0.06, 0),
                          child: Text(
                            "Email verification",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 22,
                              color: AppColors.Google,
                              fontFamily: "Poppins",
                            ),//3072568500
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              width * 0.035, height * 0.05, width * 0.06, 0),
                          child: Text(
                            "Please verify your email address by entering the 4",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AppColors.Google,
                                fontFamily: "Poppins",
                                fontSize: 13),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  width * 0.07, height * 0.005, 0, 0),
                              child: Text(
                                "digit code sent to ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: AppColors.Google,
                                    fontFamily: "Poppins",
                                    fontSize: 13),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0, height * 0.005, width * 0.06, 0),
                              child: Text(
                                "daniyal.ux.happa@gmail.com.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: AppColors.Button,
                                    fontFamily: "Poppins",
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  width * 0.06, height * 0.05, width * 0.06, 0),
                              child: VerificationCode(
                                textStyle: TextStyle(
                                    fontSize: 20.0, color: AppColors.Google),
                                keyboardType: TextInputType.number,
                                underlineColor: AppColors.Button,
                                // If this is null it will use primaryColor: Colors.red from Theme
                                length: 4,
                                cursorColor: AppColors.Button,
                                // If this is null it will default to the ambient
                                // clearAll is NOT required, you can delete it
                                // takes any widget, so you can implement your design
                                onCompleted: (String value) {
                                  setState(() {
                                    _code = value;
                                  });
                                },
                                onEditing: (bool value) {
                                  setState(() {
                                    _onEditing = value;
                                  });
                                  if (!_onEditing)
                                    FocusScope.of(context).unfocus();
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              width * 0.06, height * 0.02, width * 0.06, 0),
                          child: Text(
                            "Resend code in 1:59",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.Google,
                                fontFamily: "Poppins",
                                fontSize: 12),
                          ),
                        ),
                        Container(
                          height: height * 0.06,
                          width: width * 1,
                          margin: EdgeInsets.fromLTRB(
                              width * 0.06, height * 0.07, width * 0.06, 0),
                          child: ElevatedButton(
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogIn()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.Button,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
