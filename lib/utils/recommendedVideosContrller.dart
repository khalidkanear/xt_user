import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/apipath.dart';
import 'package:http/http.dart' as http;
import '../Model/recommendedVideosModel.dart';
import '../cosntant.dart';

class RecommendedClassesController extends GetxController {
  RxBool islaodign = false.obs;
  final String url = '$get_recomended_classes_ulr';
  Future<List<RecommendedClassModel>> getRecomendedVideo() async {
    islaodign(true);
    http.Response response = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $autToken',
      },
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      islaodign(false);
      debugPrint('recClasses---->$data');
      return List<RecommendedClassModel>.from(data
          .map((recvideos) => RecommendedClassModel.fromJson(recvideos))
          .toList());
    } else {
      Get.snackbar('Alert!', 'Error Ocurred');
      islaodign(false);
    }

    return [];
  }
}
