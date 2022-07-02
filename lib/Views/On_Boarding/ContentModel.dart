import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/LogIn/LogIn.dart';
import 'package:xtreamgynlogin/Views/SignUp/SignUp.dart';

import 'OnBording.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(contents[i].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    width: width * 1,
                    height: height * 1,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                width * 0.02, height * 0.65, width * 0.02, 0),
                            child: Text(
                              contents[i].title,
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Poppins",
                                color: AppColors.Google,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                width * 0.02, height * 0.025, width * 0.02, 0),
                            child: Text(
                              contents[i].discription,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.Google,
                                fontFamily: "Poppins",
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                width * 0.02, height * 0.03, width * 0.02, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                contents.length,
                                (index) => Container(
                                    decoration: BoxDecoration(),
                                    child: buildDot(index, context)),
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.06,
                            width: width * 1,
                            margin: EdgeInsets.fromLTRB(
                                width * 0.06, height * 0.04, width * 0.06, 0),
                            child: ElevatedButton(
                              child: Text(
                                "Sign up",
                                style: TextStyle(fontFamily: "Poppins"),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {
                                Get.to(() => PhoneSignUp());
                              },
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.Button,
                              ),
                            ),
                          ),
                          Container(
                            width: width * 1,
                            margin: EdgeInsets.fromLTRB(
                                width * 0.02, height * 0.02, width * 0.02, 0),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.Google,
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => LogIn()));
                                    },
                                    child: Text(
                                      "Log In",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.Button,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 50 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.Button,
      ),
    );
  }
}
