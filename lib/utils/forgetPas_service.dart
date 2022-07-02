import 'dart:convert';

import 'package:get/get.dart';
import 'package:xtreamgynlogin/apipath.dart';
import 'package:http/http.dart' as http;

import '../Views/ForgetPassword/ResetPasswordOTP.dart';

class ForgetPasswordController extends GetxController {
  RxBool isLoading = false.obs;
  final String url = forgetpassurl;

  Future ForgetPassword(number) async {
    print('Number:-->$number');
    isLoading(true);

    //var body = json.encode(number);
    var response = await http.post(
      Uri.parse(url),
      // headers: <String, String>{
      //   'Content-Type': 'application/json; charset=UTF-8'
      // },
      body: {'mobile': number},
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      var message = jsonDecode(response.body);
      print('response message--->$message');
      isLoading(false);
      Get.to(()=>ResetPasswordOtp(phone: number,));
      Get.snackbar('Confirmation', '$message');
    } else {
      isLoading(false);
      Get.snackbar('Confirmation', 'Server Error!');
      print('error');
    }
    return;
  }
}
