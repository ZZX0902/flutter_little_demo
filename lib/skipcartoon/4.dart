import 'package:flutter/material.dart';
import 'main_skipcartton.dart';
import 'cartoon_router3.dart';

class fourpage extends StatefulWidget {
  @override
  _fourpageState createState() => _fourpageState();
}

class _fourpageState extends State<fourpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('旋转+缩放动画'),
          backgroundColor: Colors.redAccent,
          elevation: 0.0,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              RouteButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context).push(CartoonRouter3(FirstPage()));
      },
      child: Text('返回'),
    );
  }
}
