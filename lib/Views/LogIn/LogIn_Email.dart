import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/LogIn/LogIn.dart';

import '../../Model/loginmodel.dart';
import '../../utils/login_controller.dart';
import '../ForgetPassword/ForgetPassword.dart';
import '../SignUp/SignUp.dart';

class Login_Email extends StatelessWidget {
  const Login_Email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Login_Email_STF();
  }
}

class Login_Email_STF extends StatefulWidget {
  const Login_Email_STF({Key? key}) : super(key: key);

  @override
  _Login_Email_STFState createState() => _Login_Email_STFState();
}

class _Login_Email_STFState extends State<Login_Email_STF> {
  LoginController loginController = Get.put(LoginController());
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  bool isHiddenPassword = true;
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
            padding: EdgeInsets.fromLTRB(width*0.05, 0, width*0.05, 0),
            width: width,
            height: height,
            color: Colors.black.withOpacity(0.7),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        bottom: height * 0.012, top: height * 0.1),
                    height: height * 0.1,
                    child: Image.asset("assets/images/App-icon.png"),
                  ),
                  Container(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 34,
                        fontFamily: 'poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.03,),
                  Container(
                    margin: EdgeInsets.only(bottom: height * 0.03),
                    child: Text(
                      "Log in to your account to resume your activities with Xstream Gym app.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11 ,
                        fontFamily: 'poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        width: width * 0.35,
                        height: height * 0.05,
                        child: MaterialButton(
                          onPressed: () {
                            //   Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (_) => emailAlreadyExist(),
                            //   ),
                            // );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/Google.png",
                                height: height * 0.015,
                                width: width * 0.07,
                              ),
                              Text(
                                "Google",
                                style: TextStyle(
                                  fontSize: 12 * textScale,
                                  fontFamily: 'poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.Facebook,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        width: width * 0.35,
                        height: height * 0.05,
                        child: MaterialButton(
                          onPressed: () {
                            //   Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (_) => emailAlreadyExist(),
                            //   ),
                            // );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.white,
                                size: height * 0.02,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                  fontSize: 12 * textScale,
                                  fontFamily: 'poppins',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.02),
                    child: Text(
                      "or",
                      style: TextStyle(
                        fontSize: 15 * textScale,
                        fontFamily: 'poppins',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: height * 0.05,
                        width: width * 0.85,
                        margin: EdgeInsets.only(top: height * 0.02),
                        child: TextField(
                          controller: _emailcontroller,
                          cursorColor: AppColors.Button,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(width*0.03, height*0.005, 0, 0),
                            fillColor: Colors.black.withOpacity(0.3),
                            focusColor: Colors.black,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'poppins',
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: height * 0.005),
                      width: width * 0.85,
                      child: Text(
                        "Use mobile number",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 12 ,
                          fontFamily: 'poppins',
                          color: AppColors.Button,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.05,
                    width: width * 0.85,
                    margin: EdgeInsets.only(top: height * 0.03),
                    child: TextField(
                      controller: _passwordcontroller,
                      cursorColor: AppColors.Button,
                      obscureText: isHiddenPassword,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(width*0.03, height*0.005, 0, 0),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.3),
                        focusColor: Colors.black,
                        hintText: "Password",
                        suffixIcon: InkWell(
                            onTap: _togglePassword,
                            child: isHiddenPassword == true
                                ? Icon(
                              Icons.visibility,
                              color:
                              AppColors.BackGround,
                            )
                                : Icon(
                              Icons.visibility_off,
                              color:
                              AppColors.BackGround,
                            )),
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'poppins',
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.05,
                    margin: EdgeInsets.only(top: height * 0.02),
                    decoration: BoxDecoration(
                      color: AppColors.Button,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    width: width * 0.85,
                    child: MaterialButton(
                      onPressed: () {
                        if(_emailcontroller.text.isNotEmpty && _passwordcontroller.text.isNotEmpty){

                          var loginModel = LoginPhoneModel(
                            username: _emailcontroller.text,
                            password: _passwordcontroller.text,
                          );
                          loginController.loginTrainer(loginModel);
                        }else {
                          print('Error');
                          return;
                        }
                      },
                      child: Text(
                        "LOG IN",
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
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => phoneForgetPass(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 12 * textScale,
                          fontFamily: 'poppins',
                          color: AppColors.Button,
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
                          "Not a member?",
                          style: TextStyle(
                            fontSize: 12 * textScale,
                            fontFamily: 'poppins',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: width * 0.025),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => PhoneSignUp(),
                              ),
                            );
                          },
                          child: Text(
                            "Join Now",
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
  void _togglePassword() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
