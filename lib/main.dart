import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:xtreamgynlogin/Views/On_Boarding/ContentModel.dart';
import 'Views/Dashboard/BottomBar.dart';
import 'cosntant.dart';
 void main() async {
    await GetStorage.init();
    islogin = box.read('login');
    autToken = box.read('autToken');
    debugPrint('islogin--->$islogin authtoken--->$autToken');

    HttpOverrides.global = new MyHttpOverrides();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home:(islogin=='true')?Bottom_Bar(): Onbording(),
  ));
}
  class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
  return super.createHttpClient(context)
  ..badCertificateCallback =
  (X509Certificate cert, String host, int port) => true;
  }
  }