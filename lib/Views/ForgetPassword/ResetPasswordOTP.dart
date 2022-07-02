import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:xtreamgynlogin/Model/resetOTPModel.dart';

import '../../Model/otpModel.dart';
import '../../utils/ResetOTPController.dart';
import '../../utils/otpcontroller.dart';
import '../LogIn/LogIn.dart';
import '../SignUp/SignUp.dart';
import 'ResetPassword.dart';

class ResetPasswordOtp extends StatefulWidget {
  ResetPasswordOtp({
    this.phone,
    this.id,
    Key? key,
  }) : super(key: key);
  final String? phone;
  final int? id;

  @override
  State<ResetPasswordOtp> createState() => _OTP_PhoneState();
}

class _OTP_PhoneState extends State<ResetPasswordOtp> {
  ResetOtpController _resetOtpController = Get.put(ResetOtpController());
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
                                bottom: height * 0.03, top: height * 0.1),
                            height: height * 0.08,
                            child: Image.asset("assets/images/App-icon.png"),
                          ),
                          Container(
                            width: width * 1,
                            margin: EdgeInsets.fromLTRB(
                                width * 0.06, height * 0.05, width * 0.06, 0),
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
                              "A code has been sent to you. Please enter that here to reset your password."
                                  "${widget.phone}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.Google,
                                  fontFamily: "Poppins",
                                  fontSize: 14),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(width * 0.06,
                                    height * 0.05, width * 0.06, 0),
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
                                      print(_code);
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
                            width: width * 1,
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
                              child: Obx(
                                    () => _resetOtpController.isLoading.value
                                    ? CupertinoActivityIndicator()
                                    : Text(
                                  "Continue",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onPressed: () {
                                var resetOTPModel = ResetOTPModel(
                                    mobile: widget.phone,
                                    code: int.parse(_code));
                                _resetOtpController.resetVerifyOtp(resetOTPModel:resetOTPModel);
                                // print('verify');
                                // Navigator.pushReplacement(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => ResetPassword()));
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
}
