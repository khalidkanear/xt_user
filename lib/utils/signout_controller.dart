


import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Model/signoutModel.dart';
import 'package:http/http.dart' as http;
import '../Views/LogIn/LogIn.dart';
import '../apipath.dart';
import '../cosntant.dart';

class SignOutController extends GetxController {
  Future SignoutData()async{
    print('  url====$logouturl');
    var resposne = await http.get(
      Uri.parse(logouturl)
      ,
      headers: {
        // 'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $autToken',
      },
    );
    debugPrint('statuscode${resposne.statusCode}');


    if(resposne.statusCode == 200 ) {
      debugPrint('${resposne.body}');
      Get.snackbar('Signed Out', 'You have SignedOut successfuly');

      var data= jsonDecode(resposne.body);
      debugPrint('data${data}');
      await Get.to(()=>LogIn());

      return SignoutModel.fromJson(data);
    }
    return null;
  }
}

