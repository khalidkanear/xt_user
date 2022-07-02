import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:xtreamgynlogin/Views/LogIn/LogIn.dart';
import '../../Components/Colors.dart';
import '../../utils/forgetPas_service.dart';
import 'ForgetPassword_Email.dart';

class phoneForgetPass extends StatelessWidget {
  const phoneForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return phoneForgetPass_STF();
  }
}

class phoneForgetPass_STF extends StatefulWidget {
  const phoneForgetPass_STF({Key? key}) : super(key: key);

  @override
  _phoneForgetPass_STFState createState() => _phoneForgetPass_STFState();
}

class _phoneForgetPass_STFState extends State<phoneForgetPass_STF> {
  ForgetPasswordController forgetPasswordController =
  Get.put(ForgetPasswordController());
  var Phone;
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
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      "Have you forgotten your password? Provide your "
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
                        height: height * 0.09,
                        width: width * 0.85,
                        child: IntlPhoneField(
                          showDropdownIcon: false,
                          cursorColor: AppColors.Button,
                          dropdownTextStyle: TextStyle(color: Colors.white),
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black.withOpacity(0.3),
                            focusColor: Colors.white,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                              fontSize: 12 * textScale,
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
                          initialCountryCode: 'GB',
                          keyboardType: TextInputType.number,
                          onChanged: (phone) {
                            Phone = phone.completeNumber;
                            print('PhoneNumber--->${phone.completeNumber}');
                            setState(() {
                              // Phone == phone.completeNumber;
                            });
                            print(
                                'phone number--->${phone.completeNumber}'); //get complete number
                          },
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        new MaterialPageRoute(
                            builder: (context) => emailForgetPass()),
                            (route) => true,
                      );
                    },
                    child: Container(
                      width: width * 0.85,
                      child: Text(
                        "Use email",
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
                      onPressed: () async {
                        print('phoneNumber--->${Phone}');
                        await forgetPasswordController.ForgetPassword(Phone);
                      },
                      child: Obx(()=>forgetPasswordController.isLoading.value?CupertinoActivityIndicator(): Text(
                          "Reset Password",
                          style: TextStyle(
                            fontSize: 15 * textScale,
                            fontFamily: 'poppins',
                            color: Colors.white,
                          ),
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
