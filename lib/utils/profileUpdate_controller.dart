import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:xtreamgynlogin/Views/MenuPages/ProfilePage.dart';

import '../Model/profile_model.dart';
import '../apipath.dart';
import '../cosntant.dart';

class ProfileUdpateController extends GetxController {
  RxBool isloading = false.obs;
  Future updateProfileEmail(ProfileModel profileModel) async {
    print('  url====$ProfileUpdateurl');
    print(
      profileModel.mobile,
    );
    isloading(true);
    var resposne = await http.patch(
      Uri.parse(ProfileUpdateurl),
      body: {
        'id': profileModel.id.toString(),
        'full_name': profileModel.fullName.toString(),
        'bio': profileModel.bio.toString(),
        'address': profileModel.address.toString(),
        'mobile': profileModel.mobile.toString(),
        'city': profileModel.city.toString(),
        //'country': profileModel.country.toString(),
        'email': profileModel.email.toString(),
        'gender': profileModel.gender.toString(),
        'date_of_birth': profileModel.dateOfBirth.toString(),
        'height': profileModel.height.toString(),
        'height_units': profileModel.heightUnits.toString(),
        'timezone': profileModel.timezone.toString()
      },
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $autToken',
      },
    );
    print(autToken);
    debugPrint('Status code---->${resposne.statusCode}');

    if (resposne.statusCode == 200) {
      debugPrint('${resposne.body}');

      var data = jsonDecode(resposne.body);
      isloading(false);
      Get.snackbar('Confirmation', 'Profile Updated Sucessfuylly');
      Get.off(() => ProfilePage());
    } else if (resposne.statusCode == 500) {
      isloading(false);
      Get.snackbar('Alert!', 'Profile Not Updated');
    }
    return;
  }
}
