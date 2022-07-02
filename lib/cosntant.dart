

import 'package:xtreamgynlogin/Model/topTrainersModel.dart';
import 'package:get_storage/get_storage.dart';


var user_id;
var autToken;
List<TopTrainersModelClass> trainersData = [];
//List<DashBoardModel> trainersData = [];
final box = GetStorage();
String? islogin;
const String assetPath = "assets/images/";