import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:xtreamgynlogin/Views/LogIn/LogIn.dart';
import 'package:xtreamgynlogin/Views/SignUp/SignUp_Email.dart';
import '../../Components/Colors.dart';
import '../../Model/registrationmodel.dart';
import '../../utils/regApi_services.dart';

class PhoneSignUp extends StatefulWidget {
  @override
  _PhoneSignUpState createState() => _PhoneSignUpState();
}

class _PhoneSignUpState extends State<PhoneSignUp> {
  RegistrationController _registrationController =
  Get.put(RegistrationController());
  int currentIndex = 0;
  late PageController _controller;
  final _namecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _phonecontroller = TextEditingController();
  var number;
  bool isprivacyfirst = false;
  bool isprivacysecond = false;
  bool isHiddenPassword = true;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              height: height,
              padding: EdgeInsets.fromLTRB(width*0.05, 0, width*0.05, 0),
              color: Colors.black.withOpacity(0.58),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          width * 0.05, height * 0.02, 0, height * 0.02),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                new MaterialPageRoute(
                                    builder: (context) => LogIn()),
                                    (route) => false);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: height * 0.025,
                            color: AppColors.Google,
                          )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.1,
                          child: Image.asset("assets/images/App-icon.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: height * 0.007),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'poppins',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: height*0.01,),
                        Container(
                          margin: EdgeInsets.only(bottom: height * 0.02),
                          padding: EdgeInsets.only(
                              left: width * 0.05, right: width * 0.05),
                          child: Text(
                            "Sign up today for the best virtual reality fitness experience.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'poppins',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.05,
                          width: width * 0.85,
                          margin: EdgeInsets.only(top: height * 0.01),
                          child: TextFormField(
                            controller: _namecontroller,
                            cursorColor: AppColors.Button,
                            obscureText: false,
                            keyboardType: TextInputType.name,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.fromLTRB(width * 0.03, 0, 0, 0),
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.3),
                              focusColor: Colors.black,
                              hintText: "Name",
                              hintStyle: TextStyle(
                                fontSize: 12,
                                fontFamily: 'poppins',
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.transparent),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: height * 0.015),
                              height: height * 0.05,
                              width: width * 0.85,
                              child: IntlPhoneField(
                                controller: _phonecontroller,
                                showDropdownIcon: false,
                                cursorColor: AppColors.Button,
                                keyboardType: TextInputType.phone,
                                dropdownTextStyle: TextStyle(color: Colors.white),
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  counterText: '',
                                  filled: true,
                                  contentPadding: EdgeInsets.fromLTRB(
                                      width * 0.03, 0, 0, 0),
                                  fillColor: Colors.black.withOpacity(0.3),
                                  focusColor: Colors.white,
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(
                                    fontSize: 12,
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
                                initialCountryCode: 'GB',
                                // dropdownDecoration: BoxDecoration(
                                //     color: Colors.white,
                                //     backgroundBlendMode: BlendMode.dstOver),
                                flagsButtonPadding: EdgeInsets.only(left: 10),
                                onChanged: (phone) {
                                  //  print(phone.completeNumber);
                                  number = phone.completeNumber;
                                  print(
                                      'phone number$number'); //get complete number
                                },
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EmailSignUp()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: height * 0.01),
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
                          height: height * 0.05,
                          width: width * 0.85,
                          margin: EdgeInsets.only(top: height * 0.01),
                          child: TextFormField(
                            validator: ((value) {
                              if (value!.isEmpty || value.length < 8) {
                                return 'Enter valid password';
                              }
                              return null;
                            }),
                            controller: _passwordcontroller,
                            cursorColor: AppColors.Button,
                            obscureText: isHiddenPassword,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
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
                              contentPadding:
                              EdgeInsets.fromLTRB(width * 0.03, 0, 0, 0),
                              hintStyle: TextStyle(
                                fontSize: 12,
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
                          ),
                        ),
                        Container(
                          height: height * 0.01,
                          width: width * 0.88,
                          margin: EdgeInsets.only(
                            top: height * 0.01,
                          ),
                          child: LinearPercentIndicator(
                            width: width * 0.88,
                            lineHeight: height * 0.005,
                            percent: 0.5,
                            backgroundColor: Colors.black.withOpacity(0.2),
                            progressColor: Colors.green,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: AppColors.Button,
                                  side: BorderSide(
                                    color: AppColors.semiTransparent,
                                    width: height * 0.0025,
                                  ),
                                  value: this.isprivacyfirst,
                                  onChanged: (newValue) {
                                    setState(() {
                                      this.isprivacyfirst = newValue!;
                                    });
                                  }),
                              Container(
                                margin: EdgeInsets.only(top: height * 0.015),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "I agree to Xstream Gym",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'poppins',
                                            color: Colors.white,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  backgroundColor:
                                                  AppColors.bottomNavBg,
                                                  title: Text(
                                                    "Help protect your website and its users"
                                                        "with clear and fair website terms and conditions."
                                                        "These terms and conditions for a website set out.",
                                                  ),
                                                  titleTextStyle: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontSize: 13,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Text(
                                            " Terms of Use",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'poppins',
                                              color: AppColors.Button,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "and",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'poppins',
                                            color: Colors.white,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  backgroundColor:
                                                  AppColors.bottomNavBg,
                                                  title: Text(
                                                      "Help protect your website and its users"
                                                          "with clear and fair website terms and conditions."
                                                          "These terms and conditions for a website set out"
                                                          "key issues such as acceptable use, privacy, cookies, "
                                                          "registration and passwords, intellectual property."),
                                                  titleTextStyle: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontSize: 16,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Text(
                                            " Privacy Policy",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'poppins',
                                              color: AppColors.Button,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: AppColors.Button,
                                  side: BorderSide(
                                    color: AppColors.semiTransparent,
                                    width: height * 0.0025,
                                  ),
                                  value: this.isprivacysecond,
                                  onChanged: (newValue) {
                                    setState(() {
                                      this.isprivacysecond = newValue!;
                                    });
                                  }),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 13,),
                                child: Text(
                                  "I consent to receive phone calls and SMS messages from Xstream "
                                      " Gym to provide updates on your order and/or for marketing "
                                      "purposes. Message frequency depends on"
                                      "your activity. You may opt-out by texting"
                                      "*STOP*. Message and data rates may apply.",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'poppins',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height * 0.015),
                          decoration: BoxDecoration(
                            color: AppColors.Button,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          width: width * 0.85,
                          height: height * 0.05,
                          child: MaterialButton(
                            onPressed: () {
                              if (_namecontroller.text.isNotEmpty &&
                                  number != null &&
                                  _passwordcontroller.text.isNotEmpty &&
                                  (isprivacyfirst == true &&
                                      isprivacysecond == true)) {
                                var regisModel = RegistrationModel(
                                    email: '',
                                    mobile: number,
                                    full_name: _namecontroller.text,
                                    password: _passwordcontroller.text,
                                    privacyPolicy: true,
                                    role: 'user',
                                    smsOptIn: true,
                                    bio: 'bio');
                                _registrationController
                                    .registerTrainer(regisModel);
                              } else {
                                print('error');
                                return;
                              }
                              print(_namecontroller.text);
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             OTP_Phone(phone: number.toString())));
                            },
                            child:  Obx(()=>
                            _registrationController.isLoading.value
                                ? CupertinoActivityIndicator(color: Colors.white,)
                                : Text(
                              "Sign Up",
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
                          margin: EdgeInsets.only(top: height * 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
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
                                      builder: (_) => LogIn(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Login",
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
                    )
                  ],
                ),
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
