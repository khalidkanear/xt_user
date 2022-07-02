import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import '../../Model/profile_model.dart';
import '../../apipath.dart';
import '../../utils/profile_controller.dart';
import 'Edit_Profile.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfilePage_STF();
  }
}

class ProfilePage_STF extends StatefulWidget {
  const ProfilePage_STF({Key? key}) : super(key: key);
  @override
  _ProfilePage_STFState createState() => _ProfilePage_STFState();
}

class _ProfilePage_STFState extends State<ProfilePage_STF> {
  ProfileController profileController = Get.put(ProfileController());
  ProfileModel? profileData;
  bool isloading = true;

  Future<ProfileModel> getProfileData() async {
    isloading = true;
    profileData = await profileController.ProfileData();
    debugPrint('trainer profile--->:${profileData?.id}');
    setState(() {
      isloading = false;
    });
    return profileData!;
  }

  @override
  void initState() {
    getProfileData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontFamily: "Poppins", fontSize: 22),
        ),
        backgroundColor: AppColors.Button,
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: height * 0.025,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Container(
              width: width * 0.05,
              height: height * 0.025,
              child: FittedBox(
                fit: BoxFit.cover,
                child: ImageIcon(
                  AssetImage("assets/images/edit_icon.png"),
                  color: AppColors.Google,
                ),
              ),
            ),
            onPressed: () {
              Get.to(() => EditProfileIcon(profileModel: profileData!));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: height * 0.2,
              child: Center(
                child: Container(
                  height: height * 0.3,
                  width: width * 0.3,
                  child: Container(
                      height: height * 0.3,
                      width: width * 0.3,
                      decoration:BoxDecoration(shape: BoxShape.circle,
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                              '$imagesurl${profileData?.image}'),
                        ),
                      )),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.06, width * 0.06, 0),
              child: Row(
                children: [
                  Text(
                    "${profileData?.fullName}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Row(
                children: [
                  Text(
                    "${profileData?.bio}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Row(
                children: [
                  Text(
                    "${profileData?.mobile}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Row(
                children: [
                  Text(
                    "${profileData?.address}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Row(
                children: [
                  Text(
                    "${profileData?.city}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Row(
                children: [
                  Text(
                    "${profileData?.country}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Row(
                children: [
                  Text(
                    "${profileData?.email}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Row(
                children: [
                  Text(
                    "${profileData?.gender}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Row(
                children: [
                  Text(
                    "${profileData?.dateOfBirth}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Row(
                children: [
                  Text(
                    "${profileData?.height}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, width * 0.15),
              child: Row(
                children: [
                  Text(
                    "${profileData?.timezone}",
                    style: TextStyle(
                        color: AppColors.BackGround.withOpacity(0.3),
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
