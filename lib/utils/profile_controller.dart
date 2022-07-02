import 'dart:convert';


import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'package:http/http.dart'as http;

import '../Model/profile_model.dart';
import '../apipath.dart';
import '../cosntant.dart';


class ProfileController extends GetxController{
  Future ProfileData()async{
    print('  url====$Profileurl');
    var resposne = await http.get(
      Uri.parse(Profileurl)
      ,
      headers: {
        // 'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $autToken',
      },
    );
    debugPrint('${resposne.statusCode}');


    if(resposne.statusCode == 200 ) {
      debugPrint('${resposne.body}');

      var data= jsonDecode(resposne.body);
      debugPrint('data${data}');

        return ProfileModel.fromJson(data);
    }
    return null;
  }
}