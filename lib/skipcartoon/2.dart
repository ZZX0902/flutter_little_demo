import 'package:flutter/material.dart';
import 'main_skipcartton.dart';
import 'cartoon_router.dart';

class secondpage extends StatefulWidget {
  @override
  _secondpageState createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('渐近渐出动画'),
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
        Navigator.of(context).push(CartoonRouter(FirstPage()));
      },
      child: Text('返回'),
    );
  }
}
