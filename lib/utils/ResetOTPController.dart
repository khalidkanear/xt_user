import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Model/resetOTPModel.dart';
import 'package:xtreamgynlogin/apipath.dart';
import 'package:http/http.dart' as http;
import '../Views/ForgetPassword/ResetPassword.dart';

class ResetOtpController extends GetxController {
  final String url = reset_otp_url;
  RxBool isLoading = false.obs;
  Future resetVerifyOtp({ResetOTPModel? resetOTPModel}) async {
    print(resetOTPModel?.toJson());
    isLoading(true);
    var response = await http.post(Uri.parse(url),
        body: {'mobile':resetOTPModel?.mobile.toString(),'code':resetOTPModel?.code.toString()},
        headers: {'Accept': 'application/json',


      //'Content-Type': 'application/json; charset=UTF-8'

        });
    if (response.statusCode == 200) {
      Get.snackbar('Confirmation', 'Your Phone Number is verified',
          backgroundColor: Color.fromARGB(236, 250, 250, 251));
      await Get.to(() =>  ResetPassword(phone: resetOTPModel?.mobile.toString(),));
    } else {
      isLoading(false);
      Get.snackbar('Alert!', 'Server Error');
    }
    return;
  }
}