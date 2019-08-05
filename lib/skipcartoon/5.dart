import 'package:flutter/material.dart';
import 'main_skipcartton.dart';
import 'cartoon_router4.dart';

class fivepage extends StatefulWidget {
  @override
  _fivepageState createState() => _fivepageState();
}

class _fivepageState extends State<fivepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('平滑动画'),
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
        Navigator.of(context).push(CartoonRouter4(FirstPage()));
      },
      child: Text('返回'),
    );
  }
}
