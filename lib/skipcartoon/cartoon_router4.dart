import 'package:flutter/material.dart';



class CartoonRouter4 extends PageRouteBuilder{
  final Widget widget;



  CartoonRouter4(this.widget)
      :super(
      transitionDuration:Duration(seconds: 1),
      pageBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,

          ){

        return widget;
      },
      transitionsBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,
          Widget child,

          ){
        return SlideTransition(
          position: Tween<Offset>(begin: Offset(-1.0, 0.0),end: Offset(0.0, 0.0)).animate(CurvedAnimation(parent:animation1, curve:Curves.fastOutSlowIn)),
          child: child,
        );
      }

  );




}