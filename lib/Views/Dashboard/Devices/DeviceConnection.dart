import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

import '../BottomBar.dart';


class deviceConnection extends StatefulWidget {
  const deviceConnection({Key? key}) : super(key: key);

  @override
  State<deviceConnection> createState() => _deviceConnectionState();
}

class _deviceConnectionState extends State<deviceConnection> {

  bool value = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context) => Bottom_Bar()),
                    (route) => false);
          },
            child: Icon(Icons.arrow_back, color: Colors.black,)),
        title: Text(
          "Device Connection",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontFamily: "Poppins",
          ),
        ),
      ),
      body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(left: width * 0.04),
              child: Text(
                "Bluetooth",
                style: TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.1),
              ),
              height: height * 0.035,
              child: MaterialButton(
                color: AppColors.Button,
                  textColor: Colors.white,
                  onPressed: (){},
                child: Text(
                  "Discover",
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
            buildAndroidSwitch(),
          ],
        ),
        Container(
          alignment: Alignment.centerLeft,
          width: width,
          height: height * 0.03,
          color: Colors.grey.withOpacity(0.4),
          padding: EdgeInsets.only(left: height * 0.02),
          margin: EdgeInsets.only(top: height * 0.01),
          child: Text(
            "AVAILABLE DEVICES",
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Poppins"
            ),
          ),
        ),
      ],
      ),
    );
  }
  Widget buildAndroidSwitch() => Transform.scale(
    scale: 0.8,
    child: Switch(
      activeColor: AppColors.Button,
      value: value,
      onChanged: (value) => setState(() => this.value = value),
    ),
  );
}
