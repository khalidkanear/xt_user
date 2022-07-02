import 'dart:convert';

import 'package:get/get.dart';
import 'package:xtreamgynlogin/apipath.dart';
import 'package:http/http.dart' as http;

class ForgetPasswordEmailController extends GetxController {
  RxBool isLoading = false.obs;
  final String url = forgetpassemailurl;

  Future ForgetPasswordEmail(String Email) async {
    isLoading(true);
    print(Email);

    //var body = {'email': Email};
    var response = await http.post(Uri.parse(url),
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8'
        // },
        body: {'email': Email});

    print(response.statusCode);
    if (response.statusCode == 200) {
      var message = jsonDecode(response.body)['message'];
      print('response message--->$message');

      if (response.statusCode == 200) {
        //    Get.snackbar('Confirmation', message.toString());
      }
    } else {
      // Get.snackbar('Confirmation', 'Server Error!');
      isLoading(false);
      print('error');
    }
    return;
  }
}
