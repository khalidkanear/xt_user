import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:xtreamgynlogin/Model/resetPasswordModel.dart';
import 'package:xtreamgynlogin/utils/resetPasswordController.dart';

import '../../Model/otpModel.dart';
import '../../utils/otpcontroller.dart';
import '../LogIn/LogIn.dart';
import '../SignUp/SignUp.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({
    this.phone,
    this.id,
    Key? key,
  }) : super(key: key);
  final String? phone;
  final int? id;

  @override
  State<ResetPassword> createState() => _OTP_PhoneState();
}

class _OTP_PhoneState extends State<ResetPassword> {
  ResetPasswordController _resetPasswordController = Get.put(ResetPasswordController());
  final _passwordcontroller = TextEditingController();
  bool isHiddenPassword = true;

  bool _onEditing = true;
  late String _code;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var textScale = MediaQuery.of(context).textScaleFactor;
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
                color: Colors.black.withOpacity(0.3),
                child: Container(
                    width: width * 1,
                    height: height * 1,
                    color: Colors.black.withOpacity(0.7),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                bottom: height * 0.03, top: height * 0.05),
                            height: height * 0.08,
                            child: Image.asset("assets/images/App-icon.png"),
                          ),
                          Container(
                            width: width * 1,
                            margin: EdgeInsets.fromLTRB(
                                width * 0.06, height * 0, width * 0.06, 0),
                            child: Text(
                              "Reset Password",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: AppColors.Google,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Container(
                            width: width * 1,
                            margin: EdgeInsets.fromLTRB(
                                width * 0.06, height * 0.05, width * 0.06, 0),
                            child: Text(
                              "Have you forgotten your password? Provide your email or phone and we will send you code."
                                  "${widget.phone}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.Google,
                                  fontFamily: "Poppins",
                                  fontSize: 14),
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
                                filled: true,
                                contentPadding: EdgeInsets.fromLTRB(
                                    width * 0.03, height * 0.005, 0, 0),
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
                            margin: EdgeInsets.fromLTRB(width*0.05, 0, width*0.05, 0),
                            child: Row(
                              children: [
                                Container(
                                  width: width*0.3,
                                  child: Divider(
                                    color: Colors.green,
                                    height: 20,
                                    thickness: 4,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                ),
                                Container(
                                  width: width*0.3,
                                  child: Divider(
                                    color: Colors.green,
                                    height: 20,
                                    thickness: 4,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                ),
                                Container(
                                  width: width*0.3,
                                  child: Divider(
                                    color: Colors.green,
                                    height: 20,
                                    thickness: 4,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(width*0.05, 0, width*0.05, 0),
                            child: Row(
                              children: [
                                Icon(Icons.circle,color: AppColors.Google,size: 10,),
                                SizedBox(width: width*0.02,),
                                Text("At least 8 characters ",
                                  style: TextStyle(
                                      color: AppColors.Google,
                                      fontFamily: "Poppins",
                                      fontSize: 14),),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(width*0.05, 0, width*0.05, 0),
                            child: Row(
                              children: [
                                Icon(Icons.circle,color: AppColors.Google,size: 10,),
                                SizedBox(width: width*0.02,),
                                Text("Must contain letters",
                                  style: TextStyle(
                                      color: AppColors.Google,
                                      fontFamily: "Poppins",
                                      fontSize: 14),),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(width*0.05, 0, width*0.05, 0),
                            child: Row(
                              children: [
                                Icon(Icons.circle,color: AppColors.Google,size: 10,),
                                SizedBox(width: width*0.02,),
                                Text("One number or special character",
                                  style: TextStyle(
                                      color: AppColors.Google,
                                      fontFamily: "Poppins",
                                      fontSize: 14),),
                              ],
                            ),
                          ),
                          Container(
                            height: height * 0.06,
                            width: width * 1,
                            margin: EdgeInsets.fromLTRB(
                                width * 0.06, height * 0.07, width * 0.06, 0),
                            child: ElevatedButton(
                              child: Obx(
                                    () => _resetPasswordController.isLoading.value
                                    ? CupertinoActivityIndicator()
                                    : Text(
                                  "Reset Password",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onPressed: () {
                                debugPrint(widget.phone);
                                debugPrint(_passwordcontroller.text);
                                var resetPasswordModel = ResetPasswordModel(
                                    mobile: widget.phone,password:_passwordcontroller.text
                                );
                                _resetPasswordController.resetPassword(resetPasswordModel);
                                debugPrint('verify');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.Button,
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
                          Container(
                            margin: EdgeInsets.only(top: height * 0.15),
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
                    )),
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
