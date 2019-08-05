import 'package:flutter/material.dart';
import '2.dart';
import 'cartoon_router.dart';
import 'cartoon_router2.dart';
import 'cartoon_router3.dart';
import 'cartoon_router4.dart';

import '5.dart';

import '3.dart';
import '4.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('打call-zzx'),
        elevation: 0.0,
        backgroundColor:  Colors.lightBlue,
      ),
      body: Column(
        children: <Widget>[
          RouteButton(),
          RaisedButtonmain(),
          RaisedButtontest(),
          RaisedButtontest2()],

      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.of(context).push(CartoonRouter(secondpage() ));
      },
      child: Text('渐近渐出动画'),
    );
  }

}
class RaisedButtonmain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.of(context).push(CartoonRouter2(tridpage() ));

      },
      child: Text('缩放动画'),
    );
  }

}
class RaisedButtontest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.of(context).push(CartoonRouter3(fourpage() ));

      },
      child: Text('旋转+缩放'),
    );
  }

}
class RaisedButtontest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.of(context).push(CartoonRouter4(fivepage() ));

      },
      child: Text('平滑'),
    );
  }

}


