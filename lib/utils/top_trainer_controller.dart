import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Model/topTrainersModel.dart';
import 'package:xtreamgynlogin/apipath.dart';
import 'package:http/http.dart' as http;

import '../cosntant.dart';

class TopTrainersController extends GetxController {
  @override
  void onInit() {
    fetchTrianersData();
    super.onInit();
  }

  final String url = top_trainers_url;
  RxBool isLoading = false.obs;
  var top_trainers_list = <TopTrainersModelClass>[].obs;
  Future<List<TopTrainersModelClass>> fetchTrianersData() async {
    isLoading(true);
    try {
      var respones = await http.get(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $autToken',
        },
      );
      if (respones.statusCode == 200) {
        var data = jsonDecode(respones.body)['data'];
        debugPrint('tarainers data--->$data');

        if (respones.body.isNotEmpty) {
          return List<TopTrainersModelClass>.from(data
              .map((dashBoardModel) => TopTrainersModelClass.fromJson(dashBoardModel))
              .toList());
        }
        throw data;
      } else {
        return [];
      }
    } finally {
      isLoading(false);
    }
  }
}
