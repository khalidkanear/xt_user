import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Model/signoutModel.dart';
import 'package:xtreamgynlogin/Views/Dashboard/BottomBar.dart';

import '../../utils/signout_controller.dart';

import '../MenuPages/Help.dart';
import '../MenuPages/Invite_friends.dart';
import '../MenuPages/Privacy.dart';
import '../MenuPages/ProfilePage.dart';
import '../MenuPages/Settings/Settings.dart';
import '../MenuPages/Subscription_Pages/Subscription.dart';
import '../MenuPages/Wallet.dart';

class Menu_Page extends StatefulWidget {
  const Menu_Page({Key? key}) : super(key: key);

  @override
  State<Menu_Page> createState() => _Menu_PageState();
}

class _Menu_PageState extends State<Menu_Page> {
  SignOutController signOutController = Get.put(SignOutController());
  SignoutModel? SignoutData;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontFamily: "Poppins", fontSize: 22),
        ),
        backgroundColor: AppColors.Button,
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Bottom_Bar()));
          },
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InviteFriends()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: AppColors.BackGround.withOpacity(0.5)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width * 1,
              height: height * 0.06,
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.035, width * 0.05, 0),
              padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.person_add),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "Invite Friends",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: AppColors.BackGround.withOpacity(0.5)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width * 1,
              height: height * 0.06,
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.015, width * 0.05, 0),
              padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.edit),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectPackage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: AppColors.BackGround.withOpacity(0.5)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width * 1,
              height: height * 0.06,
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.015, width * 0.05, 0),
              padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.account_balance_wallet),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "Wallet",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Subscription_Page()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: AppColors.BackGround.withOpacity(0.5)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width * 1,
              height: height * 0.06,
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.015, width * 0.05, 0),
              padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.subscriptions),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "Subscription",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HelpPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: AppColors.BackGround.withOpacity(0.5)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width * 1,
              height: height * 0.06,
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.015, width * 0.05, 0),
              padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.help),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "Help",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Privacy()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: AppColors.BackGround.withOpacity(0.5)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width * 1,
              height: height * 0.06,
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.015, width * 0.05, 0),
              padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.privacy_tip),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "Privacy",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => Setting_Page());
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: AppColors.BackGround.withOpacity(0.5)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width * 1,
              height: height * 0.06,
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.015, width * 0.05, 0),
              padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              await signOutController.SignoutData();
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: AppColors.BackGround.withOpacity(0.5)),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              width: width * 1,
              height: height * 0.06,
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.015, width * 0.05, 0),
              padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "Sign out",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
