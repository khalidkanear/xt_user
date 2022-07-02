
import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

import 'Subscription_Pages/editWallet.dart';

class SelectPackage extends StatefulWidget {
  const SelectPackage({Key? key}) : super(key: key);
  @override
  State<SelectPackage> createState() => _SelectPackageState();
}

class _SelectPackageState extends State<SelectPackage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.Button,
        title: Container(
            margin: EdgeInsets.only(left: width*0.09),
            child: Text(
              'Select a Package',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            )),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 00),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        color: AppColors.subscription,
        child:  Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, right: 35, top: 35),
                    height: height * 0.55,
                    width: width * 0.82,
                    color: Colors.grey[850],
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: height*0.03, right: 20),
                            child: Text(
                              'Basic',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins'),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: height*0.05, right: 20),
                            child: Text('£8',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22))),
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Row(
                            children: [
                              Icon(
                                Icons.radio_button_checked_sharp,
                                color: AppColors.Button,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '10 Pre-recorded videos',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.011, left: 30),
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/images/live-stream.png"),
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '3 live session',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:  height*0.011, left: 30),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: AppColors.Button,
                              ),
                              SizedBox(
                                width: width*0.04,
                              ),
                              Text(
                                '1 add friend',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:  height*0.011, left: 31),
                          child: Row(
                            children: [
                              Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: width*0.04,
                              ),
                              Text(
                                '1 personal message',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height*0.09),
                        Container(height: height*0.045,
                          width: width*0.69,
                          child: MaterialButton(
                            color: AppColors.Button,

                            elevation: 10,
                            child: Text('SUBSCRIBE',
                                style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: Colors.grey)),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 35),
                    height: height * 0.55,
                    width: width * 0.82,
                    color: Colors.grey[850],
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 30, right: 20),
                            child: Text(
                              'Pro',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins'),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 40, right: 20),
                            child: Text('£12',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22))),
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Row(
                            children: [
                              Icon(
                                Icons.radio_button_checked_sharp,
                                color: AppColors.Button,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '30 Pre-recorded videos',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 30),
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/images/live-stream.png"),
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '10 live session',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 30),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: AppColors.Button,
                              ),
                              SizedBox(
                                width: width*0.04,
                              ),
                              Text(
                                '50 add friend',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 32),
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '100 personal message',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height*0.08),
                        Container(height: height*0.045,
                          width: width*0.69,
                          child: MaterialButton(
                            color: AppColors.Button,
                            elevation: 10,
                            child: Text('SUBSCRIBE',
                                style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: Colors.grey)),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 35),
                    height: height * 0.55,
                    width: width * 0.82,
                    color: Colors.grey[850],
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                              top: 30,
                              right: 20,
                            ),
                            child: Text(
                              'Premium',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins'),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 40, right: 20),
                            child: Text('£30',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22))),
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Row(
                            children: [
                              Icon(
                                Icons.radio_button_checked_sharp,
                                color: AppColors.Button,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '120 Pre-recorded videos',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 30),
                          child: Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/images/live-stream.png"),
                                color: Colors.white,
                                size: 30,
                              ),

                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '45 live session',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 30),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: AppColors.Button,
                              ),
                              SizedBox(
                                width: width*0.04,
                              ),
                              Text(
                                '500 add friend',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 31),
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),

                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Unlimmited messages',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height*0.09),
                        Container(height: height*0.045,
                          width: width*0.69,
                          child: MaterialButton(
                            color: AppColors.Button,
                            elevation: 10,
                            child: Text('SUBSCRIBE',
                                style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: Colors.grey)),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.03, left: width*0.65),
              child: Row(
                children: [
                  Text(
                    'Add Card',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.6),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      child: ImageIcon(
                        AssetImage("assets/images/plus.png"),
                        color: AppColors.Button,
                        size: 15,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PaymentData()),);
                      }),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

