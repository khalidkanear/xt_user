// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Components/bottomsheet.dart';
import '../../Model/profile_model.dart';


import '../../utils/profileUpdate_controller.dart';
import '../../utils/profile_image_upload_controlller.dart';
import '../Dashboard/Dashboard.dart';


import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../apipath.dart';
import 'ProfilePage.dart';


class EditProfileIcon extends StatefulWidget {
  EditProfileIcon({required this.profileModel, Key? key}) : super(key: key);
  ProfileModel profileModel;

  @override
  _EditProfileIconState createState() => _EditProfileIconState();
}

class _EditProfileIconState extends State<EditProfileIcon> {
  ProfileUdpateController _profileController =
  Get.put(ProfileUdpateController());
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _fullnamecontroller = TextEditingController();
  TextEditingController _biocontroller = TextEditingController();
  TextEditingController _phonecontroller = TextEditingController();
  TextEditingController _citycontroller = TextEditingController();
  TextEditingController _countrycontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _gendercontroller = TextEditingController();
  TextEditingController _heightcontroller = TextEditingController();
  TextEditingController _timezonecontroller = TextEditingController();
  TextEditingController _unitscontroller = TextEditingController();
  var _image;
  ProfileImageUploadController profileImageUploadController =
  Get.put(ProfileImageUploadController());

  @override
  void initState() {
    _fullnamecontroller.text = widget.profileModel.fullName!;
    _biocontroller.text = widget.profileModel.bio!;
    _phonecontroller.text = widget.profileModel.mobile!;
    _addresscontroller.text = widget.profileModel.address!;
    _citycontroller.text = widget.profileModel.city!;
    _countrycontroller.text = widget.profileModel.country!;
    _emailcontroller.text = widget.profileModel.email!;
    _gendercontroller.text = widget.profileModel.gender!;
    _heightcontroller.text = widget.profileModel.height!;
    _unitscontroller.text = widget.profileModel.heightUnits!;
    _timezonecontroller.text = widget.profileModel.timezone!;
    super.initState();
  }


  List <int>numbers=[1,2,33,4,4,4,];

   add (int n){
     setState(() {

     });
    numbers.add(n);
  }
  void dispose(){


     _biocontroller.dispose();
     super.dispose();
  }



  var imageFile;

  void getImage_From_Gallery() async {
    imageFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (mounted)
      setState(() {
        _image = File(imageFile.path.toString());
      });
    await profileImageUploadController.uploadprofileimage(image: _image);
  }

  void getImagefromCamera() async {
    imageFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (mounted)
      setState(() {
        _image = File(imageFile.path.toString());
        print(_image);
        profileImageUploadController.uploadprofileimage(image: _image);
      });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins",
            fontSize: 18,
          ),
        ),
        backgroundColor: AppColors.Button,
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.to(() => ProfilePage());
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: height * 0.2,
              child: Center(
                child: (_image == null && widget.profileModel.image == null)
                    ? Container(
                    height: height * 0.3,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/person.png'))),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(70, 100, 4, 0),
                      child: InkWell(
                          onTap: () {
                            Get.bottomSheet(bottomsheet(ontap1: (){
                              getImagefromCamera();
                            },ontap2: (){
                              getImage_From_Gallery();
                            }));

                              // barrierColor: Colors.red[50],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              );
                              enableDrag: false;
                          },
                          child: Icon(Icons.camera_alt_outlined,
                              color: AppColors.Button)),
                    ))
                    : widget.profileModel.image == null
                    ? Container(
                    height: height * 0.3,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: FileImage(_image),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(70, 100, 4, 0),
                      child: InkWell(
                        onTap: () {
                          Get.bottomSheet(
                              bottomsheet(ontap1: (){
                                getImagefromCamera();
                              },ontap2: (){
                                getImage_From_Gallery();
                              }));
                        },
                        child: Icon(Icons.camera_alt_outlined,
                            color: AppColors.Button),
                      ),
                    ))
                    : Column(
                      children: [
                        Container(
                  height: 100,width: 100,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                        image: DecorationImage(fit: BoxFit.fill,
                            image: CachedNetworkImageProvider(
                              '$imagesurl${widget.profileModel.image.toString()}',),
                        ),

                  ),

                child:
                    Container(margin: EdgeInsets.fromLTRB(80, 50,0, 5),
                      child:  GestureDetector(onTap: (){
                        Get.bottomSheet(
                        bottomsheet(ontap1: (){
                          getImagefromCamera();
                        },ontap2: (){
                          getImage_From_Gallery();
                        }));
                      },
                        child: Icon(Icons.camera_alt_outlined,
                          color: AppColors.Button),
                      ) ,) ) ],
                    ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.06, width * 0.06, 0),
              child: Container(
                width: width * 0.4,
                child: Column(
                  children: [
                    Container(
                      width: width * 0.9,
                      child: Text(
                        "First Name",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: AppColors.BackGround.withOpacity(0.3),
                            fontFamily: "Poppins",
                            fontSize: 14),
                      ),
                    ),
                    TextField(
                      controller: _fullnamecontroller,
                      cursorColor: Colors.orange,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.BackGround),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: AppColors.Button, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Column(
                children: [
                  Container(
                    width: width * 0.9,
                    child: Text(
                      "Bio",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: AppColors.BackGround.withOpacity(0.3),
                          fontFamily: "Poppins",
                          fontSize: 14),
                    ),
                  ),
                  TextField(
                    controller: _biocontroller,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.BackGround),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.Button, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Column(
                children: [
                  Container(
                    width: width * 0.9,
                    child: Text(
                      "Phone Number",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: AppColors.BackGround.withOpacity(0.3),
                          fontFamily: "Poppins",
                          fontSize: 14),
                    ),
                  ),
                  TextField(
                    controller: _phonecontroller,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.BackGround),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.Button, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Column(
                children: [
                  Container(
                    width: width * 0.9,
                    child: Text(
                      "Address",
                      style: TextStyle(
                          color: AppColors.BackGround.withOpacity(0.3),
                          fontFamily: "Poppins",
                          fontSize: 14),
                    ),
                  ),
                  TextField(
                    controller: _addresscontroller,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.BackGround),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.Button, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Column(
                children: [
                  Container(
                    width: width * 0.9,
                    child: Text(
                      "City",
                      style: TextStyle(
                          color: AppColors.BackGround.withOpacity(0.3),
                          fontFamily: "Poppins",
                          fontSize: 14),
                    ),
                  ),
                  TextField(
                    controller: _citycontroller,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.BackGround),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.Button, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Column(
                children: [
                  Container(
                    width: width * 0.9,
                    child: Text(
                      "Country",
                      style: TextStyle(
                          color: AppColors.BackGround.withOpacity(0.3),
                          fontFamily: "Poppins",
                          fontSize: 14),
                    ),
                  ),
                  TextField(
                    controller: _countrycontroller,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.BackGround),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.Button, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Column(
                children: [
                  Container(
                    width: width * 0.9,
                    child: Text(
                      "Email Address",
                      style: TextStyle(
                          color: AppColors.BackGround.withOpacity(0.3),
                          fontFamily: "Poppins",
                          fontSize: 14),
                    ),
                  ),
                  TextField(
                    controller: _emailcontroller,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.BackGround),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.Button, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Column(
                children: [
                  Container(
                    width: width * 0.9,
                    child: Text(
                      "Gander",
                      style: TextStyle(
                          color: AppColors.BackGround.withOpacity(0.3),
                          fontFamily: "Poppins",
                          fontSize: 14),
                    ),
                  ),
                  TextField(
                    controller: _gendercontroller,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.BackGround),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.Button, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width * 0.9,
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, 0),
              child: Text(
                "Date of birth",
                style: TextStyle(
                    color: AppColors.BackGround.withOpacity(0.3),
                    fontFamily: "Poppins",
                    fontSize: 14),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.06, width * 0.06, 0),
              child: Row(
                children: [
                  Container(
                    width: width * 0.4,
                    child: Column(
                      children: [
                        Container(
                          width: width * 0.4,
                          child: Text(
                            "Height",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AppColors.BackGround.withOpacity(0.3),
                                fontFamily: "Poppins",
                                fontSize: 14),
                          ),
                        ),
                        TextField(
                          controller: _heightcontroller,
                          cursorColor: Colors.orange,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: AppColors.BackGround),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: AppColors.Button, width: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    width: width * 0.4,
                    child: Column(
                      children: [
                        Container(
                          width: width * 0.4,
                          child: Text(
                            "Units",
                            style: TextStyle(
                                color: AppColors.BackGround.withOpacity(0.3),
                                fontFamily: "Poppins",
                                fontSize: 14),
                          ),
                        ),
                        TextField(
                          controller: _unitscontroller,
                          cursorColor: Colors.orange,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: AppColors.BackGround),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: AppColors.Button, width: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  width * 0.06, width * 0.15, width * 0.06, width * 0.15),
              child: Column(
                children: [
                  Container(
                    width: width * 0.9,
                    child: Text(
                      "Timezone",
                      style: TextStyle(
                          color: AppColors.BackGround.withOpacity(0.3),
                          fontFamily: "Poppins",
                          fontSize: 14),
                    ),
                  ),
                  TextField(
                    controller: _timezonecontroller,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.BackGround),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.Button, width: 2),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 1,
                    margin: EdgeInsets.only(top: height * 0.02),
                    child: ElevatedButton(
                      child: Obx(
                            () => _profileController.isloading.value
                            ? Center(
                          child: CupertinoActivityIndicator(
                              color: Colors.white),
                        )
                            : Text(
                          "Save",
                          style: TextStyle(fontFamily: "Poppins"),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onPressed: () async {
                        if (_citycontroller.text.isNotEmpty &&
                            _fullnamecontroller.text.isNotEmpty &&
                            _countrycontroller.text.isNotEmpty &&
                            _biocontroller.text.isNotEmpty &&
                            _phonecontroller.text.isNotEmpty &&
                            _addresscontroller.text.isNotEmpty &&
                            _emailcontroller.text.isNotEmpty &&
                            _gendercontroller.text.isNotEmpty &&
                            _heightcontroller.text.isNotEmpty &&
                            _unitscontroller.text.isNotEmpty &&
                            _timezonecontroller.text.isNotEmpty) {
                          ProfileModel _profilemodel = ProfileModel(
                            id: '${widget.profileModel.id}',
                            fullName: _fullnamecontroller.text.trim(),
                            address: _addresscontroller.text.trim(),
                            bio: _biocontroller.text.trim(),
                            city: _citycontroller.text.trim(),
                            // country: _countrycontroller.text.trim(),
                            dateOfBirth: "1999/08/16 05:00:00",
                            // dateOfBirth: _dateofbirthcontroller.text.trim(),
                            email: _emailcontroller.text.trim(),
                            gender: _gendercontroller.text.trim(),
                            height: _heightcontroller.text.trim(),
                            heightUnits: _unitscontroller.text.trim(),
                            timezone: _timezonecontroller.text.trim(),
                            mobile: _phonecontroller.text.trim(),
                          );
                          _profileController.updateProfileEmail(_profilemodel);
                        } else {
                          return;
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.Button,
                      ),
                    ),
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
