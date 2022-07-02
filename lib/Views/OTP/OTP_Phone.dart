import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import '../../Model/otpModel.dart';
import '../../utils/otpcontroller.dart';

class OTP_Phone extends StatefulWidget {
  OTP_Phone({
    this.phone,
    this.id,
    Key? key,
  }) : super(key: key);
  final String? phone;
  final int? id;

  @override
  State<OTP_Phone> createState() => _OTP_PhoneState();
}

class _OTP_PhoneState extends State<OTP_Phone> {
  OtpController _otpController = Get.put(OtpController());
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
                            width: width * 1,
                            margin: EdgeInsets.fromLTRB(
                                width * 0.06, height * 0.15, width * 0.06, 0),
                            child: Text(
                              "Phone number verification",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
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
                              "Enter the 4 digit code sent at your phone\n"
                                  "${widget.phone}",
                              textAlign: TextAlign.left,
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
                                    () => _otpController.isLoading.value
                                    ? CircularProgressIndicator()
                                    : Text(
                                  "Continue",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              onPressed: () {
                                var otpverificationModel = OtpVerificationModel(
                                    mobile: widget.phone,
                                    id: widget.id,
                                    email: '',
                                    verification_code: int.parse(_code));
                                _otpController.verifyOtp(otpverificationModel);
                                print('verify');
                                // Navigator.pushReplacement(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => LogIn()));
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
      ),
    );
  }
}
