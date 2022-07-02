import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Views/Dashboard/BottomBar.dart';
import 'package:xtreamgynlogin/apipath.dart';
import 'package:http/http.dart' as http;

import '../Model/otpModel.dart';

class OtpController extends GetxController {
  final String url = phone_Otp_verifyingurl;
  RxBool isLoading = false.obs;
  Future verifyOtp(OtpVerificationModel otpVerificationModel) async {
    isLoading(true);
    var response = await http.patch(Uri.parse(url),
        body: jsonEncode(otpVerificationModel));
    if (response.statusCode == 422) {
      Get.snackbar('Confirmation', 'Your Phone Number is verified',
          backgroundColor: Color.fromARGB(236, 250, 250, 251));

      await Get.to(() => Bottom_Bar());
    } else {
      Get.snackbar('Alert!', 'Server Error');
    }
    return;
  }
}
