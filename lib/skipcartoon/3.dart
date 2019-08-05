import 'package:flutter/material.dart';
import 'main_skipcartton.dart';
import 'cartoon_router2.dart';

class tridpage extends StatefulWidget {
  @override
  _tridpageState createState() => _tridpageState();
}

class _tridpageState extends State<tridpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('缩放动画'),
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
        Navigator.of(context).push(CartoonRouter2(FirstPage()));
      },
      child: Text('返回'),
    );
  }
}
