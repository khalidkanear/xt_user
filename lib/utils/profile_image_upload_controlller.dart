import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;


import '../apipath.dart';
import '../cosntant.dart';

class ProfileImageUploadController extends GetxController {
  var postUri = Uri.parse("$profileimageuploadurl");
  Map<String, String> headers = {
    "Authorization": "Bearer $autToken",
    "Accept": "application/json",
  };
  Future uploadprofileimage({File? image}) async {
    http.MultipartRequest request = new http.MultipartRequest(
      "POST",
      postUri,
    );

    http.MultipartFile multipartFile =
        await http.MultipartFile.fromPath('image', '${image?.path.toString()}');
    request.files.add(multipartFile);
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    print('statusCode-->:${response.statusCode}');
  }
}
