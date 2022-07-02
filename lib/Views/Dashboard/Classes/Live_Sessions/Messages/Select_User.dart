import 'package:flutter/material.dart';
import 'package:xtreamgynlogin/Components/Colors.dart';

import 'ChatPage.dart';

class Select_User extends StatelessWidget {
  const Select_User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Select_User_STF();
  }
}

class Select_User_STF extends StatefulWidget {
  const Select_User_STF({Key? key}) : super(key: key);

  @override
  _Select_User_STFState createState() => _Select_User_STFState();
}

class _Select_User_STFState extends State<Select_User_STF> {
  bool issearching = false;
  List<String> namesonSearch = [];
  List<String> names = <String>[
    'Gabriella Gabriella', 'Kayleigh Chosen',
    'Kirsten Allen', 'Mark Ireland', 'Spin JunKites'];
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: ClipPath(
            clipper: CustomBar(),
             child: issearching == false ? Container( width: 180, color: AppColors.Button,) : new Container( width: 180, color: AppColors.Google,)
          ),
          leading: Container(
            child: issearching == false ? IconButton(
              icon: Icon(Icons.arrow_back_ios, color: AppColors.Google,), onPressed: () {
              Navigator.pop(context);
            },
            ) : IconButton(
              icon: Icon(Icons.arrow_back), onPressed: () {
              Navigator.pop(context);
            },
            ),
          ),
          automaticallyImplyLeading: false,
          title: issearching == false? Text('Select User',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  color: AppColors.Google,
                  fontWeight: FontWeight.bold
              ),): Container(
            width: width*1,
                child: TextField(
            controller: _textEditingController,
            focusNode: _textFocusNode,
            onChanged: (value){
                setState(() {
                  namesonSearch = names.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
                });
            },
            decoration: InputDecoration(
                hintText: "Class Name",
                border: InputBorder.none,
            ),
          ),
              ),
          actions: [
             IconButton(
                icon: Icon(Icons.search, color: AppColors.Google,),
                onPressed: (){
                  setState(() {
                    issearching = true;

                  });
                },
              ),
          ],
          iconTheme: IconThemeData(
            color: AppColors.BackGround, //change your color here
          ),
          centerTitle: true,
          backgroundColor: AppColors.Google,
          toolbarHeight: height*0.05,
          elevation: 0,
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: AppColors.Button, width: 2.0),
            ),
            labelColor: AppColors.BackGround,
            unselectedLabelColor: AppColors.BackGround.withOpacity(0.7),
            tabs: [
              Tab( text: "ALL"),
              Tab( text: "TRAINERS"),
              Tab( text: "FRIENDS")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: AppColors.Google,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: height*0.7,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            ListView.builder(
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: _textEditingController!.text.isNotEmpty
                                  ? namesonSearch.length
                                  : names.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: AppColors.BackGround.withOpacity(0.2),width: 1),
                                              borderRadius: BorderRadius.all(Radius.circular(10))),
                                          padding: EdgeInsets.all(10),
                                          margin: EdgeInsets.fromLTRB(width*0.06, height*0.04, width*0.06, 0),
                                          height: height*0.1,
                                          width: width*0.9,
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
                                            },
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: height*0.05,
                                                  width: width*0.2,
                                                  child: CircleAvatar(
                                                    backgroundImage: AssetImage("assets/images/trainer1.png",),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(_textEditingController!.text.isNotEmpty
                                                      ? namesonSearch[index]
                                                      : names[index],
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: AppColors.BackGround,
                                                      fontSize: 16,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                      ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: AppColors.Google,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _textEditingController!.text.isNotEmpty
                          ? namesonSearch.length
                          : names.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: AppColors.BackGround.withOpacity(0.2),width: 1),
                                      borderRadius: BorderRadius.all(Radius.circular(10))),
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.fromLTRB(width*0.06, height*0.04, width*0.06, 0),
                                  height: height*0.1,
                                  width: width*0.9,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height*0.05,
                                          width: width*0.2,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage("assets/images/trainer1.png",),
                                          ),
                                        ),
                                        Container(
                                          child: Text(_textEditingController!.text.isNotEmpty
                                              ? namesonSearch[index]
                                              : names[index],
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: AppColors.BackGround,
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: AppColors.Google,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBar extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height-50);
    path.quadraticBezierTo(width, height-50, width, height-50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
