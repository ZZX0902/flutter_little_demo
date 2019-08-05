import 'package:flutter/material.dart';



class CartoonRouter3 extends PageRouteBuilder{
  final Widget widget;



  CartoonRouter3(this.widget)
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
        return RotationTransition(
          turns: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
          child: ScaleTransition(
            scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
            child: child,
          ),
        );
      }

  );




}