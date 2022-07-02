import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Views/LogIn/LogIn.dart';
import 'package:xtreamgynlogin/apipath.dart';
import 'package:http/http.dart' as http;
import '../Model/resetPasswordModel.dart';

class ResetPasswordController extends GetxController {
  final String url = reset_password_url;
  RxBool isLoading = false.obs;
  Future resetPassword(ResetPasswordModel resetPasswordModel) async {
    isLoading(true);
    var response = await http.patch(Uri.parse(url),
        body: jsonEncode(resetPasswordModel));
    debugPrint(response.statusCode.toString());
    if (response.statusCode == 200) {
      Get.snackbar('Confirmation', 'Password reset successful',
          backgroundColor: Color.fromARGB(236, 250, 250, 251));

      await Get.to(() => LogIn());
    } else {
      Get.snackbar('Alert!', 'Server Error');
    }
    return;
  }
}