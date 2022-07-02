

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomsheet( { Function()? ontap1,Function()? ontap2}){
  return


    Container(
      height: 130,
      color: Colors.grey[800],
      child: Column(
        children: [
          Padding(
            padding:
            const EdgeInsets.fromLTRB(
                0, 10, 200, 0),
            child: Text(
              'Profile Photo',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(
                110, 30, 0, 0),
            child: Row(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap:ontap1,
                      child: Icon(
                        Icons.camera_alt,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Camera',
                      style: TextStyle(
                          color:
                          Colors.white),
                    )
                  ],
                ),
                SizedBox(width: 45),
                Column(
                  children: [
                    InkWell(
                      onTap: ontap2,
                      child: Icon(
                        Icons.photo,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Gallery',
                      style: TextStyle(
                          color:
                          Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );

}