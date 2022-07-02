import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Model/regisrationMailmodel.dart';

class APIServices {
  String url = "https://backend.xstreamgym.com/api";
  Future<RegistrationMailResponseModel>registration(RegistrationMailRequestModel requestModel) async {

    final response = await http.post(Uri.parse(url+"/SignUp_Email"), body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400 || response.statusCode==422) {
      return RegistrationMailResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }}