import 'package:flutter/material.dart';
import 'dart:ui';
var size = MediaQueryData.fromWindow(window).size;
var widthq = size.width;
var heightq = size.height;

class BoxDecoration01 extends StatefulWidget {
  @override
  _BoxDecoration01State createState() => _BoxDecoration01State();
}

class _BoxDecoration01State extends State<BoxDecoration01> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BoxDecoration'),
        ),
        body: Center(
          child: Container(
            height: 100,
              width: widthq-20.0,
              decoration: new BoxDecoration(
//                border: new Border.all(color: Color(0xFFFF0000), width: 0.5), // 边色与边宽度
                color: Color(0xFF9E9E9E), // 底色
                //        borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                borderRadius: new BorderRadius.horizontal(left: Radius.elliptical(15, 15)), // 也可控件一边圆角大小
              ),

          ),


        ),
      ),
    );
  }
}
