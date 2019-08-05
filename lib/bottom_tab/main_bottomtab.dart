import 'package:flutter/material.dart';
import 'BottomNavigationWidget.dart';


class bottomtab  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bottom tab',
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),

    );
  }
}

