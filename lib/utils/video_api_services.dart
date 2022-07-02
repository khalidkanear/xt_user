import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Model/videos_model_class.dart';



class APIService {
  String url = "https://backend.xstreamgym.com/api";


  Future<Prerecorded> fetchList() async {

    final response = await http.get(Uri.parse(url+"/classes/class?type=live&per_page=10"),headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization':'Bearer 1427|wa2jOR2etEIR6z3S1VeHSwjLtlqjw1RJJdbKml28'
    });
    if (response.statusCode == 200 || response.statusCode == 400 || response.statusCode==422) {
      return Prerecorded.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
