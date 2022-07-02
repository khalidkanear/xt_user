import 'package:flutter/material.dart';

import '../../../Components/Colors.dart';

class PaymentData extends StatefulWidget {
  const PaymentData({Key? key}) : super(key: key);

  @override
  State<PaymentData> createState() => _PaymentDataState();
}

class _PaymentDataState extends State<PaymentData> {
  bool isHiddenPassword = true;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.subscription,
      body: SingleChildScrollView(
        child: Container(
          height: height*1.5,
          child: Column(
            children: [
              Container(
                width: width * 2,
                margin: EdgeInsets.only(top: height * 0.03),
                child: Text(
                  'Payment Data',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontSize: 25, fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(height: height*0.01,),
              Container(
                width: width * 0.89,
                height: height * 0.23,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height * 0.02),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: width * 0.06,top: height*0.01),
                              child: Image.asset('assets/images/simcard.png',height: height*0.035,)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: width * 0.44),
                            child: isHiddenPassword? Text(
                              'VISA',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ) :  Text(
                              'MASTER',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),),)
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            right: width * 0.1, top: height * 0.035),
                        child: Text(
                          '---- ---- ---- ---- ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 39,
                              fontWeight: FontWeight.w200),
                        )),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: width * 0.055),
                            child: Text(
                              'Name',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: width * 0.48),
                                child: Text(
                                  'Exp date',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                                )),
                            Container(
                                margin: EdgeInsets.only(left: width * 0.5),
                                child: Text(
                                  'MM/YY',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(  margin: EdgeInsets.only(left: width*0.24,top: height*0.01),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: MaterialButton(
                        color: isHiddenPassword? AppColors.Button: AppColors.Gray,
                        elevation: 10,
                        child: Text('VISA',
                            style: TextStyle(
                                letterSpacing: 0.5,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.grey)),
                        onPressed: () {
                          setState(() {
                            isHiddenPassword = true;
                          });


                        },
                      ),

                    ),
                    SizedBox(width: width*0.090,),
                    Container(
                      margin: EdgeInsets.only(),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: MaterialButton(
                        color: isHiddenPassword? AppColors.Gray: AppColors.Button,

                        elevation: 10,
                        child: Text('MASTER',
                            style: TextStyle(
                                letterSpacing: 0.5,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.grey)),
                        onPressed: () {

                          setState(() {
                            isHiddenPassword = false;
                          });

                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.03,),
              Container(
                height: height*0.57,
                width: width*0.93,
                decoration: BoxDecoration(
                  color: AppColors.subscription,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 1.0,
                      spreadRadius: 3.0,
                      offset: Offset(1,1), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: height*0.01, right: width*0.64),
                        child: Text('Card Number *',style: TextStyle(color: Colors.white),)),
                    Container(
                      margin: EdgeInsets.only(top: height*0.01, ),
                      height: height*0.06,
                      width: width*0.85,
                      decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: new InputDecoration(
                            hintText:('---  ---  ---  ---    ---  ---  ---  ---   ---  ---  ---  ---   ---  ---  ---  ---'),

                            hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,color: Colors.black),
                            alignLabelWithHint: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              const BorderSide(width: 0.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              const BorderSide(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            )),
                        validator: (val) {
                          if (val?.length == 0) {
                            return "Email cannot be empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: height*0.01, left: width*0.03),
                            child: Text('Exp Date *',style: TextStyle(color: Colors.white,fontFamily: 'Poppins'),)),
                        Container(
                            margin: EdgeInsets.only(top: height*0.01, left: width*0.27),
                            child: Text('CVC *',style: TextStyle(fontFamily: 'Poppins',color: Colors.white),)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height*0.01, left: width*0.04 ),
                          height: height*0.06,
                          width: width*0.2,
                          decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: new InputDecoration(
                                hintText:('   MM'),
                                hintStyle: TextStyle(fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Colors.grey[600]),
                                alignLabelWithHint: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 0.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.01, left: width*0.04 ),
                          height: height*0.06,
                          width: width*0.2,
                          decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: new InputDecoration(
                                hintText:('   YY'),
                                hintStyle: TextStyle(fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Colors.grey[600]),
                                alignLabelWithHint: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 0.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.01, left: width*0.04 ),
                          height: height*0.06,
                          width: width*0.35,
                          decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: new InputDecoration(
                                hintText:('   CVC'),
                                hintStyle: TextStyle(fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Colors.grey[600]),
                                alignLabelWithHint: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 0.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: height*0.01, left: width*0.03),
                            child: Text('First Name *',style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Poppins'),)),
                        Container(
                            margin: EdgeInsets.only(top: height*0.01, left: width*0.225),
                            child: Text('Last Name *',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.white),)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height*0.01, left: width*0.04 ),
                          height: height*0.06,
                          width: width*0.4,
                          decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: new InputDecoration(
                                hintText:('First Name'),
                                hintStyle: TextStyle(fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Colors.grey[600]),
                                alignLabelWithHint: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 0.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.01, left: width*0.04 ),
                          height: height*0.06,
                          width: width*0.4,
                          decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: new InputDecoration(
                                hintText:('Last Name'),
                                hintStyle: TextStyle(fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Colors.grey[600]),
                                alignLabelWithHint: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 0.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: height*0.01, left: width*0.03),
                            child: Text('Address *',style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Poppins'),)),
                        Container(
                            margin: EdgeInsets.only(top: height*0.01, left: width*0.27),
                            child: Text('City *',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.white),)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height*0.01, left: width*0.04 ),
                          height: height*0.06,
                          width: width*0.4,
                          decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: new InputDecoration(
                                hintText:('Address'),
                                hintStyle: TextStyle(fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Colors.grey[600]),
                                alignLabelWithHint: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 0.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.01, left: width*0.04 ),
                          height: height*0.06,
                          width: width*0.4,
                          decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: new InputDecoration(
                                hintText:('City'),
                                hintStyle: TextStyle(fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Colors.grey[600]),
                                alignLabelWithHint: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 0.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: height*0.01, left: width*0.03),
                            child: Text('Country/State *',style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Poppins'),)),
                        Container(
                            margin: EdgeInsets.only(top: height*0.01, left: width*0.17),
                            child: Text('Zip/Post Code *',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.white),)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height*0.01, left: width*0.04 ),
                          height: height*0.06,
                          width: width*0.4,
                          decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: new InputDecoration(
                                hintText:('Country'),
                                hintStyle: TextStyle(fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Colors.grey[600]),
                                alignLabelWithHint: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 0.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.01, left: width*0.04 ),
                          height: height*0.06,
                          width: width*0.4,
                          decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: new InputDecoration(
                                hintText:('Zip Code'),
                                hintStyle: TextStyle(fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Colors.grey[600]),
                                alignLabelWithHint: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 0.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            validator: (val) {
                              if (val?.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.03,),
              Container(
                margin: EdgeInsets.only(),
                height: height * 0.05,
                width: width * 0.85,
                child: MaterialButton(
                  color: AppColors.Button,
                  elevation: 10,
                  child: Text('ADD CARD',
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.grey)),
                  onPressed: () {},
                ),

              ), ],
          ),
        ),
      ),
    );
  }

  getColor(Color white, MaterialColor red) {}
}


