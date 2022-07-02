import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../Components/Colors.dart';
import '../LogIn/LogIn.dart';
import '../OTP/OTP_Code.dart';
import 'SignUp.dart';

class EmailSignUp extends StatelessWidget {
  const EmailSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return emailSignUp_STF();
  }
}

class emailSignUp_STF extends StatefulWidget {
  const emailSignUp_STF({Key? key}) : super(key: key);

  @override
  _emailSignUp_STFState createState() => _emailSignUp_STFState();
}

class _emailSignUp_STFState extends State<emailSignUp_STF> {
  @override
  bool valuefirst = false;
  bool valuesecond = false;
  bool isHiddenPassword = true;

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
              padding: EdgeInsets.fromLTRB(width*0.05, 0, width*0.05, 0),
              height: height,
              color: Colors.black.withOpacity(0.7),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          margin: EdgeInsets.only(bottom: height * 0.012),
                          height: height * 0.1,
                          child: Image.asset("assets/images/App-icon.png"),
                        ),
                        Container(
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
                          child: TextField(
                            cursorColor: AppColors.Button,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
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
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
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
                                keyboardType: TextInputType.visiblePassword,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.black.withOpacity(0.3),
                                  focusColor: Colors.black,
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    fontSize: 12,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PhoneSignUp()));
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
                          height: height * 0.05,
                          width: width * 0.85,
                          margin: EdgeInsets.only(top: height * 0.01),
                          child: TextField(
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
                              hintStyle: TextStyle(
                                fontSize: 12,
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
                        Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: AppColors.Button,
                                    side: BorderSide(
                                      color: AppColors.semiTransparent,
                                      width: height * 0.0025,
                                    ),
                                    value: this.valuefirst,
                                    onChanged: (newValue) {
                                      setState(() {
                                        this.valuefirst = newValue!;
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
                                              fontSize: 14,
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
                                                      fontSize: 15,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Text(
                                              " Terms of Use",
                                              style: TextStyle(
                                                fontSize: 14,
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
                                              fontSize: 14,
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
                                                      fontSize: 14,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Text(
                                              " Privacy Policy",
                                              style: TextStyle(
                                                fontSize: 14,
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
                            Row(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Checkbox(
                                      checkColor: Colors.white,
                                      activeColor: AppColors.Button,
                                      side: BorderSide(
                                        color: AppColors.semiTransparent,
                                        width: height * 0.0025,
                                      ),
                                      value: this.valuesecond,
                                      onChanged: (newValue) {
                                        setState(() {
                                          this.valuesecond = newValue!;
                                        });
                                      }),
                                ),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10,),
                                        child: Text(
                                          "I consent to receive phone calls and SMS messages from Xstream "
                                              " Gym to provide updates on your order and or for marketing "
                                              "purposes. Message frequency depends on"
                                              "your activity. You may opt-out by texting"
                                              "*STOP*. Message and data rates may apply.",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'poppins',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
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
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (_) => OTP_email(),
                              //   ),
                              // );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 15 * textScale,
                                fontFamily: 'poppins',
                                color: Colors.white,
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
