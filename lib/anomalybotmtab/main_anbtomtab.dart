import 'package:flutter/material.dart';
import 'Bottomappbar.dart';

class anbotmtab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cool',
      //自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,

      ),home: Bottomappbar(),


    );
  }
}
