import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Classes/Live_Sessions/Messages/Messages.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Classes/Trainers_Profiles.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Dashboard.dart';
import 'Menu_page.dart';
import 'Videos/VideosPage.dart';

class Bottom_Bar extends StatelessWidget {
  const Bottom_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bottom_Bar_STF();
  }
}

class Bottom_Bar_STF extends StatefulWidget {
  const Bottom_Bar_STF({Key? key}) : super(key: key);

  @override
  _Bottom_Bar_STFState createState() => _Bottom_Bar_STFState();
}

class _Bottom_Bar_STFState extends State<Bottom_Bar_STF> {
  int index= 0;
  final screens = [
    DashBoardPage(),
    Message(),
    Live_page(),
    trainersProfile(),
    Menu_Page()
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final items = [
      Icon(Icons.home, size: height*0.035),
      ImageIcon(
        AssetImage("assets/images/chat.png"),
        size: height*0.035,
        color: AppColors.Google,
      ),
      Icon(Icons.ondemand_video, size: height*0.035),
      Icon(Icons.person, size: height*0.035),
      Icon(Icons.menu, size: height*0.035),
    ];
    return Scaffold(
        extendBody: true,
        body: screens[index],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(color: AppColors.Google)
          ),
          child: CurvedNavigationBar(
            backgroundColor: AppColors.Google,
            color: AppColors.btmbar,
            buttonBackgroundColor: AppColors.Button,
            height: height*0.09,
            index: index,
            items: items,
            onTap: (index)=> setState(() => this.index = index),
          ),
        )
    );
  }
}


