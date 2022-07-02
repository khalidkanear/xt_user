import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:xtreamgynlogin/Views/LogIn/LogIn.dart';
import 'package:xtreamgynlogin/apipath.dart';
import 'package:http/http.dart' as http;

import '../Model/registrationmodel.dart';
import '../Views/OTP/OTP_Phone.dart';


class RegistrationController extends GetxController {
  RxBool isLoading = false.obs;
  List userdata = [].obs;
  final String url = registeruserurl;

  Future registerTrainer(RegistrationModel registrationModel) async {
    isLoading(true);
    print(registrationModel.toJson());

    var body = json.encode(registrationModel);
    var response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: body,
    );
    print(response.statusCode);

    if (response.statusCode == 201) {
      var user_id = jsonDecode(response.body)['id'];
      var autToken = jsonDecode(response.body)['token'];
      print(user_id);
      // Get.snackbar('Confirmation', 'Sign up Successfully',
      //     animationDuration: Duration(seconds: 1),
      //     backgroundColor: Color(0xff0000));
      Get.to(() => OTP_Phone(
        phone: registrationModel.mobile,
        id: user_id,
      ));
    } else if (response.statusCode == 422) {
      //  Get.snackbar('Confirmation', 'User Registered Sucessfully');

      var message = jsonDecode(response.body)['errors']['mobile'][0];
      //  user = message;

      Get.snackbar('Confirmation', '$message',
          animationDuration: Duration(seconds: 1),
          backgroundColor: Color(0xff0000));
      if (message == 'The mobile has already been taken.') {
        print('user');
        await Get.off(() => LogIn());
      } else if (message == 'Signup Successfully') {
        Get.off(() => OTP_Phone(
          phone: registrationModel.mobile.toString(),
        ));
      } else {
        return;
      }

      print('response body--->$message');
      isLoading(false);
    } else {
      Get.snackbar('Alert', 'Server Error');
    }

    return;
  }
}
