import 'dart:ui';

import 'package:flutter/material.dart';

//สร้างตัวแปร
var headerSec = Container(
  color: Colors.red,
  //ความสูง
  height: 300,
  child: Image.asset("assets/images/CoC_img.jpg"),
);
var bodySec = Container(
  color: Colors.pink,
  child: Padding(
    padding: EdgeInsets.all(15),
    child: Container(
      color: Colors.green,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "College of Computig",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "PSU, Phuket , Thailand",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Icon(
            Icons.thumb_up,
            size: 25,
          ),
          Container(
            child: Text("99"),
            margin: EdgeInsets.only(left: 10),
          )
        ],
      ),
    ),
  ),
);

var footerSec = Container(
  color: Colors.blue,
  child: Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Program",
        style: TextStyle(fontSize: 25),
      ),
      Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Image.asset("assets/images/admission.jpg"),
            Image.asset("assets/images/campus.jpg"),
            Image.asset("assets/images/domitory.jpg"),
            Image.asset("assets/images/service.jpg"),
          ],
        ),
      )
    ],
  ),
);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UI Workshop",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Ui Workshop"),
          ),
          body: ListView(
            //แนวนอน
            //scrollDirection: Axis.horizontal, และเปลี่ยนในอเทนเนอร์จากศูงเป็น width
            children: [
              headerSec,
              bodySec,
              footerSec,
            ],
          )),
    );
  }
}
