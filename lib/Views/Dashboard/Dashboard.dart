import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Classes/Trainers.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Classes/VideoList.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Health/Health.dart';
import '../../cosntant.dart';

import '../MenuPages/Invite_friends.dart';
import '../MenuPages/ProfilePage.dart';
import '../MenuPages/Wallet.dart';
import 'Classes/HipHopVideos.dart';
import 'Classes/RecVideos.dart';
import 'Devices/Devices.dart';
import 'package:country_pickers/country_pickers.dart';

class Dashboard_Ori extends StatefulWidget {
  const Dashboard_Ori({Key? key}) : super(key: key);

  @override
  State<Dashboard_Ori> createState() => _Dashboard_OriState();
}

class _Dashboard_OriState extends State<Dashboard_Ori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation){
         return orientation == Orientation.portrait? Dashboard_STF() : LandScape();
        },
      ),
    );
  }
}


class Dashboard_STF extends StatefulWidget {
  const Dashboard_STF({Key? key}) : super(key: key);

  @override
  _Dashboard_STFState createState() => _Dashboard_STFState();
}

class _Dashboard_STFState extends State<Dashboard_STF> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DefaultTabController(
                length: 4, // length of tabs
                initialIndex: 0,
                child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                  Container(
                    child: TabBar(
                      labelStyle: TextStyle(
                  fontSize: 12,
                  fontFamily: "Poppins",
                ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: "Poppins",
                      ),
                      indicatorColor: Colors.transparent,
                      labelColor: AppColors.BackGround,
                      unselectedLabelColor: AppColors.BackGround.withOpacity(0.5),
                      tabs: [
                        Tab(
                            icon: ImageIcon(
                              AssetImage("assets/images/gymcycle.png"),
                              color: AppColors.BackGround.withOpacity(0.7),
                            ),
                            text: 'Classes',),
                        Tab(
                            icon:ImageIcon(
                              AssetImage("assets/images/heart_icon.png"),
                              color: AppColors.BackGround.withOpacity(0.7),
                            ),
                            text: 'Health'),
                        Tab(
                            icon: ImageIcon(
                              AssetImage("assets/images/watch_icon.png"),
                              color: AppColors.BackGround.withOpacity(0.7),
                            ),
                            text: 'Devices'),
                        Tab(
                            icon: ImageIcon(
                              AssetImage("assets/images/trophy.png"),
                              color: AppColors.BackGround.withOpacity(0.7),
                            ),
                            text: 'Games'),
                      ],
                    ),
                  ),
                  Container(
                      height: 400, //height of TabBarView
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                      ),
                      child: TabBarView(
                          children: <Widget>[
                        Container(
                          child: Center(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    VideoList(),
                                    Trainers(),
                                    RecVideos(),
                                    HipHop()
                                  ],
                                ),
                              )
                          ),
                        ),
                        Container(
                          child: Center(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Health(),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                              child: Devices()
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text("Trophy"),
                          ),
                        ),
                      ])
                  )
                ])
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildDropdownItem( country) => Container(
  child: Row(
    children: <Widget>[
      CountryPickerUtils.getDefaultFlagImage(country),
      SizedBox(
        width: 8.0,
      ),
    ],
  ),
);

class KMProgressIndicatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.grey.withOpacity(0.7),
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.Button),
      strokeWidth: 15,
      value: 0.4,);
  }
}


class LandScape extends StatefulWidget {
  const LandScape({Key? key}) : super(key: key);

  @override
  State<LandScape> createState() => _LandScapeState();
}

class _LandScapeState extends State<LandScape> {
  int index=0;
  final  midnav = [
    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                VideoList(),
                Trainers(),
                RecVideos(),
                HipHop()
              ],
            ),
          )
      ),
    ),
    Center(
      child: Column(
        children: [
          Health()
        ],
      ),
    ),
    Center(
        child: Devices()
    ),
    Center(
      child: Text("Trophy"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only( bottomRight: Radius.circular(50)),
                      child: Container(
                        height: height*0.5,
                        width: width*1,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/dash_top.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          height: height*0.28,
                          width: width*1,
                          color: Colors.black12.withOpacity(0.8),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, width*0.02, 0, 0),
                                    height: height*0.08,
                                    width: width*0.2,
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.Button,
                                      child: Text("WA",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          color: AppColors.Google,
                                        ),),
                                    ),
                                  ),
                                  Container(
                                    height: height*0.15,
                                    width: width*0.7,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, height*0.025, 0, 0),
                                          child: Row(
                                            children: [
                                              Text("Level 1: The Beginner",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: "Poppins",
                                                    color: AppColors.Google
                                                ),),
                                              SizedBox(width: width*0.1,),
                                              Text("22/100",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: "Poppins",
                                                    color: AppColors.Google
                                                ),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(width*0.01, height*0.01, width*0.01, 0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, height*0.01, 0, 0),
                                    height: height*0.05,
                                    width: width*0.1,
                                    child: PopupMenuButton(
                                      icon: Icon(Icons.more_vert, color: Colors.white,),
                                      itemBuilder: (context)=>[
                                        PopupMenuItem(
                                          child: InkWell(
                                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>InviteFriends()));},
                                              child: Text("Invite friends")),
                                        ),
                                        PopupMenuItem(
                                          child: InkWell(
                                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));},
                                              child: Text("Profile")),
                                        ),
                                        PopupMenuItem(
                                          child: InkWell(
                                              onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectPackage()));},
                                              child: Text("Wallet")),
                                        ),
                                        PopupMenuItem(
                                          child: Text("Subscription"),
                                        ),
                                        PopupMenuItem(
                                          child: Text("Help"),
                                        ),
                                        PopupMenuItem(
                                          child: Text("Privacy"),
                                        ),
                                        PopupMenuItem(
                                          child: Text("Settings"),
                                        ),
                                        PopupMenuItem(
                                          child: Text("Sign out"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                      children:[

                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, height*0.023, width*0.01, 0),
                                          width: width*0.42,
                                          height: height*0.24,
                                          child: Image.asset("assets/images/progress.png",),
                                        ),
                                        Container(
                                          width: width*0.1,
                                          height: height*0.2,
                                          margin: EdgeInsets.fromLTRB(width*0.159, height*0.042, 0, 0),
                                          child: KMProgressIndicatorApp(),
                                        ),
                                      ]),
                                  Stack(
                                      children:[
                                        Container(
                                          width: width*0.2,
                                          height: height*0.1,
                                          margin: EdgeInsets.fromLTRB(width*0.05, height*0.023, width*0.01, 0),
                                          child: KMProgressIndicatorApp(),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(width*0.033, height*0.012, width*0.01, 0),
                                          width: width*0.24,
                                          height: height*0.122,
                                          child: Image.asset("assets/images/progress.png",),
                                        ),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(width*0.04, height*0.035, width*0.01, 0),
                                            width: width*0.22,
                                            height: height*0.11,
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: width*0.05,
                                                  height: height*0.03,
                                                  child: FittedBox(
                                                    fit: BoxFit.cover,
                                                    child: ImageIcon(
                                                      AssetImage("assets/images/clock.png"),
                                                      color: AppColors.Button,
                                                    ),
                                                  ),
                                                ),
                                                Center(child: Text("0",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: "Poppins",
                                                      color: AppColors.Google
                                                  ),)),
                                                Center(child: Text("min",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: "Poppins",
                                                      color: AppColors.Google
                                                  ),)),
                                              ],
                                            ))
                                      ]
                                  ),
                                ],
                              ),
                              Container(
                                  margin: EdgeInsets.fromLTRB(width*0.05, height*0.01, width*0.01, height*0.001),
                                  child: IntrinsicHeight(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            height: height*0.02,
                                            width: width*0.01,
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: ImageIcon(
                                                AssetImage("assets/images/dots.png"),
                                                color: AppColors.Button,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: width*0.02,),
                                          Text('0.0 km',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: "Poppins",
                                                color: AppColors.Google
                                            ),),
                                          SizedBox(width: width*0.02,),
                                          VerticalDivider(
                                            color: AppColors.Google,
                                            thickness: 2,
                                          ),
                                          SizedBox(width: width*0.03,),
                                          Container(
                                            height: height*0.012,
                                            width: width*0.007,
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: ImageIcon(
                                                AssetImage("assets/images/fire.png"),
                                                color: AppColors.Button,

                                                size: 10,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: width*0.02,),
                                          Text('10 kcal',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: "Poppins",
                                                color: AppColors.Google
                                            ),),
                                        ],
                                      ))
                              )
                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
              Container(
                child: NavigationBarTheme(
                  child: NavigationBar(
                    selectedIndex: index,
                    onDestinationSelected:(index){
                      setState(() {
                        this.index=index;
                      });
                    },
                    destinations: [
                      NavigationDestination(
                        icon: Container(
                          height: height*0.04,
                          width: width*0.02,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: ImageIcon(
                              AssetImage("assets/images/gymcycle.png"),
                              color: AppColors.BackGround.withOpacity(0.7),
                            ),
                          ),
                        ),
                        label: 'Classes',
                        selectedIcon: Container(
                          height: height*0.04,
                          width: width*0.02,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: ImageIcon(
                              AssetImage("assets/images/gymcycle.png"),
                              color: AppColors.Button.withOpacity(0.7),
                            ),
                          ),
                        ),
                        tooltip: 'Navigate to the Dashboard',
                      ),
                      NavigationDestination(
                        icon: Container(
                          height: height*0.03,
                          width: width*0.015,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: ImageIcon(
                              AssetImage("assets/images/heart.png"),
                              color: AppColors.BackGround.withOpacity(0.7),
                            ),
                          ),
                        ),
                        label: 'Health',
                        selectedIcon: Container(
                          height: height*0.03,
                          width: width*0.015,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: ImageIcon(
                              AssetImage("assets/images/heart.png"),
                              color: AppColors.Button,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      NavigationDestination(
                        icon: Container(
                          height: height*0.03,
                          width: width*0.015,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: ImageIcon(
                              AssetImage("assets/images/watch_icon.png"),
                              color: AppColors.BackGround.withOpacity(0.7),
                            ),
                          ),
                        ),
                        label: 'Devices',
                        selectedIcon: Container(
                          height: height*0.03,
                          width: width*0.015,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: ImageIcon(
                              AssetImage("assets/images/watch_icon.png"),
                              color: AppColors.Button,
                            ),
                          ),
                        ),
                      ),
                      NavigationDestination(
                        icon: Container(
                          height: height*0.04,
                          width: width*0.02,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: ImageIcon(
                              AssetImage("assets/images/trophy.png"),
                              color: AppColors.BackGround.withOpacity(0.7),
                            ),
                          ),
                        ),
                        label: 'Games',
                        selectedIcon: Container(
                          height: height*0.04,
                          width: width*0.02,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: ImageIcon(
                              AssetImage("assets/images/trophy.png"),
                              color: AppColors.Button,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),data: NavigationBarThemeData(
                  backgroundColor: Colors.transparent,
                  indicatorColor: Colors.transparent,
                ),
                ),

              ),
              midnav[index],
            ],
          ),
        ),
      ),
    );
  }
}

//Sliver AppBar Widget

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(automaticallyImplyLeading:false,backgroundColor: Colors.transparent,elevation: 0,
                title: Container(
                  margin: EdgeInsets.fromLTRB(0, height*0.02, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: height*0.08,
                          width: width*0.41,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text("Steve Smith: Level 2",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: "Poppins",
                                            color: AppColors.Google
                                        ),),
                                    ),
                                    SizedBox(width: width*0.01,),
                                    Flexible(
                                      child: Text("72/100",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: "Poppins",
                                            color: AppColors.Google
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, height*0.005, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    value: 0.3,
                                    backgroundColor: AppColors.BackGround.withOpacity(0.7),
                                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.Button),
                                    minHeight: 5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width*0.01,),
                      Container(height:30,width:62,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: CountryPickerDropdown(
                          initialValue: 'GB',
                          itemBuilder: _buildDropdownItem,
                          onValuePicked: (country) {
                            print("${country.name}");
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        height: height*0.038,
                        width: width*0.24,
                        child: Stack(
                            children:[ Container(
                              decoration: BoxDecoration(
                                  color: AppColors.overlay.withOpacity(0.7),
                                  borderRadius: BorderRadius.all(Radius.circular(5))),
                              margin: EdgeInsets.fromLTRB(0, height*0.005, 0, height*0.005),
                              padding: EdgeInsets.fromLTRB(width*0.02, 0, 0, 0),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/coin.png",
                                    height: height*0.11,
                                    width: width*0.05,),
                                  SizedBox(width: width*0.01,),
                                  Text("1.2K",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                        color: AppColors.Google
                                    ),),
                                ],
                              ),
                            ),
                              Container(
                                margin: EdgeInsets.fromLTRB(width*0.165, 0, 0, 0),
                                decoration: BoxDecoration(
                                    color: AppColors.Button,
                                    borderRadius: BorderRadius.all(Radius.circular(5))),
                                height: height*0.1,
                                width: width*0.08,
                                child: Icon(Icons.add, color: AppColors.Google,),
                              )
                            ]
                        ),
                      ),
                      SizedBox(width: width*0.01,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          height: height*0.05,
                          width: width*0.1,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${assetPath+'profile.png'}",),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                expandedHeight: height*0.3,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: ClipRRect(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                        child: Container(
                          height: height*0.29,
                          width: width*1,
                          decoration: BoxDecoration(color: Colors.transparent,
                            borderRadius: BorderRadius.only(bottomRight:Radius.circular(50) ),
                            image: DecorationImage(
                              image: AssetImage("assets/images/dash_top.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child:BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                            child: Container(
                              height: height*0.28,
                              width:  width*1,
                              color: Colors.black12.withOpacity(0.5),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0, height * 0.12, 0, 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                            children:[
                                              Container(
                                                width: width*0.253,
                                                height: height*0.126,
                                                margin: EdgeInsets.fromLTRB(width*0.07, height*0.023, width*0.01, 0),
                                                child: KMProgressIndicatorApp(),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, height*0.012, 0, 0),
                                                child: Image.asset("assets/images/progress.png",
                                                  width: width*0.4,
                                                  height: height*0.15,
                                                ),
                                              ),
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(width*0.08, height*0.048, width*0.01, 0),
                                                  width: width*0.23,
                                                  height: height*0.115,
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: width*0.06,
                                                        height: height*0.03,
                                                        child: FittedBox(
                                                          fit: BoxFit.cover,
                                                          child: ImageIcon(
                                                            AssetImage("assets/images/foot.png"),
                                                            color: AppColors.Button,
                                                          ),
                                                        ),
                                                      ),
                                                      Center(child: Text("1,126",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontFamily: "Poppins",
                                                            color: AppColors.Google
                                                        ),)),
                                                      Center(child: Text("km",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontFamily: "Poppins",
                                                            color: AppColors.Google
                                                        ),)),
                                                    ],
                                                  ))
                                            ]),
                                        Stack(
                                            children:[
                                              Container(
                                                width: width*0.253,
                                                height: height*0.126,
                                                margin: EdgeInsets.fromLTRB(width*0.072, height*0.023, width*0.01, 0),
                                                child: KMProgressIndicatorApp(),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, height*0.012, width*0.01, 0),
                                                child: Image.asset("assets/images/progress.png",
                                                  width: width*0.4,
                                                  height: height*0.15,),
                                              ),
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(width*0.089, height*0.04, width*0.01, 0),
                                                  width: width*0.22,
                                                  height: height*0.11,
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: width*0.07,
                                                        height: height*0.035,
                                                        child: FittedBox(
                                                          fit: BoxFit.cover,
                                                          child: ImageIcon(
                                                            AssetImage("assets/images/clock.png"),
                                                            color: AppColors.Button,
                                                          ),
                                                        ),
                                                      ),
                                                      Center(child: Text("032",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontFamily: "Poppins",
                                                            color: AppColors.Google
                                                        ),)),
                                                      Center(child: Text("min",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontFamily: "Poppins",
                                                            color: AppColors.Google
                                                        ),)),
                                                    ],
                                                  ))
                                            ]
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(0, height*0.01, width*0.01, height*0.001),
                                      child: IntrinsicHeight(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height: height*0.02,
                                                width: width*0.01,
                                                child: FittedBox(
                                                  fit: BoxFit.cover,
                                                  child: ImageIcon(
                                                    AssetImage("assets/images/dots.png"),
                                                    color: AppColors.Button,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: width*0.02,),
                                              Text('0.0 km',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "Poppins",
                                                    color: AppColors.Google
                                                ),),
                                              SizedBox(width: width*0.02,),
                                              VerticalDivider(
                                                color: AppColors.Google,
                                                thickness: 2,
                                              ),
                                              SizedBox(width: width*0.03,),
                                              Container(
                                                height: height*0.012,
                                                width: width*0.007,
                                                child: FittedBox(
                                                  fit: BoxFit.cover,
                                                  child: ImageIcon(
                                                    AssetImage("assets/images/fire.png"),
                                                    color: AppColors.Button,
                                                    size: 10,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: width*0.02,),
                                              Text('10 kcal',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "Poppins",
                                                    color: AppColors.Google
                                                ),),
                                            ],
                                          ))
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                    ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    onTap: (index) {
                      currentindex = index;
                      setState(() {
                        currentindex = index;
                      });
                    },
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: "Poppins",
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: "Poppins",
                    ),
                    indicatorColor: Colors.transparent,
                    labelColor: AppColors.BackGround,
                    unselectedLabelColor: AppColors.BackGround.withOpacity(0.5),
                    tabs: [
                      Tab(
                        icon: currentindex ==0 ?ImageIcon(
                        AssetImage("assets/images/gymcycle.png"),
                        color: AppColors.Button,
                        ): ImageIcon(
                          AssetImage("assets/images/gymcycle.png"),
                          color: AppColors.BackGround.withOpacity(0.7),
                        ),
                        text: 'Classes',),
                      Tab(
                          icon: currentindex ==1? ImageIcon(
                            AssetImage("assets/images/heart_icon.png"),
                            color: AppColors.Button,
                          ):ImageIcon(
                            AssetImage("assets/images/heart_icon.png"),
                            color: AppColors.BackGround.withOpacity(0.7),
                          ),
                          text: 'Health'),
                      Tab(
                          icon: currentindex ==2?ImageIcon(
                            AssetImage("assets/images/watch_icon.png"),
                            color: AppColors.Button,
                          ): ImageIcon(
                            AssetImage("assets/images/watch_icon.png"),
                            color: AppColors.BackGround.withOpacity(0.7),
                          ),
                          text: 'Devices'),
                      Tab(
                          icon: currentindex ==3?ImageIcon(
                            AssetImage("assets/images/trophy.png"),
                            color: AppColors.Button,
                          ): ImageIcon(
                            AssetImage("assets/images/trophy.png"),
                            color: AppColors.BackGround.withOpacity(0.7),
                          ),
                          text: 'Games'),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: Center(
            child: TabBarView(
                children: <Widget>[
                  Container(
                    child: Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              VideoList(),
                              Trainers(),
                              RecVideos(),
                              HipHop()
                            ],
                          ),
                        )
                    ),
                  ),
                  Container(
                    child: Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Health(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                        child: Devices()
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text("Trophy"),
                    ),
                  ),
                ])
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}