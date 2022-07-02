import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Views/LogIn/LogIn.dart';
import '../../Components/Colors.dart';
import '../../utils/forgetPasEmail_service.dart';
import 'ForgetPassword.dart';

class emailForgetPass extends StatelessWidget {
  const emailForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return emailForgetPass_STF();
  }
}

class emailForgetPass_STF extends StatefulWidget {
  @override
  _emailForgetPass_STFState createState() => _emailForgetPass_STFState();
}

class _emailForgetPass_STFState extends State<emailForgetPass_STF> {
  ForgetPasswordEmailController forgetPasswordEmailController =
  Get.put(ForgetPasswordEmailController());
  var Email;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Container(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        bottom: height * 0.03, top: height * 0.1),
                    height: height * 0.08,
                    child: Image.asset("assets/images/App-icon.png"),
                  ),
                  Container(
                    width: width*1,
                    child: Text(
                      "Forgotten Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35 * textScale,
                        fontFamily: 'poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        bottom: height * 0.03, top: height * 0.02),
                    child: Text(
                      "Have you forgotten your password? Provide your \n"
                          "email or phone and we will send you code",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12 * textScale,
                        fontFamily: 'poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: height * 0.05,
                        width: width * 0.85,
                        margin: EdgeInsets.only(top: height * 0.01),
                        child: TextField(
                            cursorColor: AppColors.Button,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.3),
                              focusColor: Colors.black,
                              contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                fontSize: 12 * textScale,
                                fontFamily: 'poppins',
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.transparent),
                              ),
                            ),
                            onChanged: (email) {
                              Email = email;
                              setState(() {});
                              print('Email--->$Email');
                            }),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          new MaterialPageRoute(
                              builder: (context) => phoneForgetPass()),
                              (route) => false);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: height * 0.01),
                      width: width * 0.85,
                      child: Text(
                        "Use mobile number",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 12 * textScale,
                          fontFamily: 'poppins',
                          color: AppColors.Button,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.015),
                    decoration: BoxDecoration(
                      color: AppColors.Button,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    width: width * 0.85,
                    child: MaterialButton(
                      onPressed: () {
                        print('Email of user$Email');
                        forgetPasswordEmailController.ForgetPasswordEmail(
                            Email);
                      },
                      child: Text(
                        "Reset Password",
                        style: TextStyle(
                          fontSize: 15 * textScale,
                          fontFamily: 'poppins',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Back to",
                          style: TextStyle(
                            fontSize: 12 * textScale,
                            fontFamily: 'poppins',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => LogIn(),
                              ),
                            );
                          },
                          child: Text(
                            "Login?",
                            style: TextStyle(
                              fontSize: 12 * textScale,
                              fontFamily: 'poppins',
                              color: AppColors.Button,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
