
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';
import 'package:xtreamgynlogin/Model/topTrainersModel.dart';
import 'package:xtreamgynlogin/Views/Dashboard/Classes/Trainers_Profiles.dart';
import 'package:xtreamgynlogin/utils/top_trainer_controller.dart';
import '../../../apipath.dart';
import 'TrainersDetails.dart';

class Trainers extends StatelessWidget {
  const Trainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Trainers_STF();
  }
}

class Trainers_STF extends StatefulWidget {
  const Trainers_STF({Key? key}) : super(key: key);

  @override
  _Trainers_STFState createState() => _Trainers_STFState();
}

class _Trainers_STFState extends State<Trainers_STF> {
  TopTrainersController _dashBoardController = Get.put(TopTrainersController());
  List<TopTrainersModelClass> trainersData = [];
  bool isloading = true;

  Future<List<TopTrainersModelClass>> getTrainersdata() async {
    isloading = true;
    trainersData = await _dashBoardController.fetchTrianersData();
    debugPrint('trainers====>:$trainersData');
    if (mounted)
      setState(() {
        isloading = false;
        debugPrint('${trainersData.length}');
      });
    return trainersData;
  }

  @override
  initState() {
    super.initState();
    getTrainersdata();

    setState(() {
      isloading = false;
    });
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
                margin: EdgeInsets.fromLTRB(width*0.05, height*0.03, 0, 0),
                child: Text("Top 10 Trainers",
                  style: TextStyle(
                    color: AppColors.BackGround.withOpacity(0.7),
                    fontFamily: "Poppins",
                  ),),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>trainersProfile()));
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(width*0.39, height*0.03, width*0.05, 0),
                    child: Text("view more >",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: AppColors.Button,
                        fontFamily: "Poppins",
                      ),),
                  ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(width*0.05, height*0.03, width*0.05, 0),
              height: height*0.1,
              child: FutureBuilder(
                future: _dashBoardController.fetchTrianersData(),
                builder: ( context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.none) {
                    debugPrint(
                        'traainer-------> availabl;${trainersData.length}');
                    return Container();
                  }
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: trainersData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, width*0.02, 0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider('$imagesurl/${trainersData[index].image}'
                                    .toString(),
                               ),),
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              width: width*0.2,
                              height: height*0.1,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TrainerDetails()));
                                },
                                child: Column(
                                  children: [
                                    Container(

                                      child: trainersData[index].ratings == '0'
                                          ? Row(
                                        children: [
                                          Container(
                                            height: height*0.03,
                                          )
                                        ],
                                      )
                                          : Container(
                                        padding: EdgeInsets.all(2),
                                        color: AppColors.BackGround.withOpacity(
                                            0.5),
                                        margin: EdgeInsets.fromLTRB(
                                            width * 0.097, height*0.008, width*0.02, 0),
                                            child: Row(
                                        children: [
                                            Image.asset(
                                              "assets/images/star.png",
                                              height: height * 0.013,
                                              color: AppColors.Button,
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Text(
                                              trainersData[index]
                                                  .ratings
                                                  .toString(),
                                              style: TextStyle(
                                                fontSize: 10,
                                                  color:
                                                  AppColors.Google),
                                            )
                                        ],
                                      ),
                                          ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      width: width * 0.23,
                                      color: AppColors.BackGround.withOpacity(
                                          0.5),
                                      margin: EdgeInsets.fromLTRB(
                                          0,33, 0, 0),
                                      child: Text(
                                        trainersData[index].fullName.toString(),
                                        textAlign: TextAlign.center,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: AppColors.Google,
                                            fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                  );
                },
              )
          ),
        ],
      ),
    );
  }
}

