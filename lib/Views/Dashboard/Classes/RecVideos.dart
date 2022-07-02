import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Model/recommendedVideosModel.dart';
import 'package:xtreamgynlogin/utils/recommendedVideosContrller.dart';

import '../Play_Video.dart';
import 'Recommended_Videos.dart';

class RecVideos extends StatelessWidget {
  const RecVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RecVideos_STF();
  }
}

class RecVideos_STF extends StatefulWidget {
  const RecVideos_STF({Key? key}) : super(key: key);

  @override
  _RecVideos_STFState createState() => _RecVideos_STFState();
}

class _RecVideos_STFState extends State<RecVideos_STF> {
  RecommendedClassesController _recommendedClassesController =
      Get.put(RecommendedClassesController());
  var isloading = false;
  List<RecommendedClassModel> recVideos = [];
  Future getRecVideos() async {
    isloading = true;
    recVideos = await _recommendedClassesController.getRecomendedVideo();

    if(mounted)setState(() {
      isloading = false;
      debugPrint('recvideos length-->:${recVideos.length}');
      debugPrint('RecVideos====>:$recVideos');
    });
    return recVideos;
  }

  @override
  void initState() {
    getRecVideos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(width * 0.05, height * 0.03, 0, 0),
              child: Text(
                "Recommended Videos",
                style: TextStyle(
                  color: AppColors.BackGround.withOpacity(0.7),
                  fontFamily: "Poppins",
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Recommended_Video()));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    width * 0.24, height * 0.03, width * 0.05, 0),
                child: Text(
                  "view more >",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: AppColors.Button,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.05, height * 0.03, width * 0.05, 0),
            height: height * 0.17,
            child: FutureBuilder(
              initialData: [],
              future: _recommendedClassesController.getRecomendedVideo(),
              builder: (context, snapshot) {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: recVideos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, width * 0.05, 0),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                    recVideos[index].image,
                                  ),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.all(10),
                            width: width * 0.65,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => playVideo()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(5),
                                      width: width * width * 0.5,
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            width * 0.45, 0, 0, 0),
                                        color: AppColors.Button,
                                        padding: EdgeInsets.fromLTRB(
                                            0,
                                            height * 0.005,
                                            width * 0.02,
                                            height * 0.005),
                                        child: Text(
                                          "20 min",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: AppColors.Google,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    height: width * 0.04,
                                  ),
                                  Container(
                                    width: width * width * 0.5,
                                    child: Text(
                                      recVideos[index]
                                          .trainer
                                          .fullName
                                          .toString(),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.Google,
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: width * width * 0.6,
                                    child: Text(
                                      "Gabriella Gabriella",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.Google,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: height * 0.013,
                                        width: width * 0.0075,
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: ImageIcon(
                                            AssetImage("assets/images/dot.png"),
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Text(
                                        "Intermediate",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.Google,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      Container(
                                        height: height * 0.034,
                                        width: width * 0.016,
                                        margin: EdgeInsets.fromLTRB(
                                            width * 0.25, 0, 0, 0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: ImageIcon(
                                            AssetImage(
                                                "assets/images/heart.png"),
                                            color: Colors.red,
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Text(
                                        "4",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.Google,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Container(
                                        height: height * 0.034,
                                        width: width * 0.016,
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: ImageIcon(
                                            AssetImage("assets/images/eye.png"),
                                            color: AppColors.Button,
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Text(
                                        "70",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.Google,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              },
            )),
      ],
    ));
  }
}
