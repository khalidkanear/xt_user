import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Views/Dashboard/BottomBar.dart';
import 'package:xtreamgynlogin/apipath.dart';
import 'package:http/http.dart' as http;

import '../Model/loginmodel.dart';
import '../cosntant.dart';


class LoginController extends GetxController {
  RxBool isloading = false.obs;
  final String url = loginurl;
  Future loginTrainer(LoginPhoneModel loginPhoneModel) async {
    var body = jsonEncode(loginPhoneModel);
    isloading(true);
    var response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: body,
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      var message = jsonDecode(response.body);

      print('response message--->$message');
      if (response.statusCode == 200) {
        Get.snackbar('Confirmation', 'login successfully');
        autToken = jsonDecode(response.body)['token'];
        print('auth token --->$autToken');
        box.write('autToken', '$autToken');
        box.write('login', 'true');
        var token = box.read('autToken');
        debugPrint('autToken--->:$autToken  && login-->:$token');

        isloading(false);
        Get.offAll(() => Bottom_Bar());
      }
    } else if (response.statusCode == 422) {
      Get.snackbar('Alert!', 'Your Credentials Don\'t Match',
          colorText: Color(0xffFFFFFF),
          animationDuration: Duration(
            seconds: 2,
          ),
          backgroundColor: AppColors.snackbacolor);
      isloading(false);
      print('error');
    } else {
      Get.snackbar('Alert!', 'Server Error!',
          colorText: Color(0xffFFFFFF),
          animationDuration: Duration(
            seconds: 2,
          ),
          backgroundColor: AppColors.snackbacolor);
    }

    return;
  }
}

