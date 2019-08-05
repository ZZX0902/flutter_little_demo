import 'package:flutter/material.dart';


class recommend extends StatefulWidget {
  @override
  _recommendState createState() => _recommendState();
}

class _recommendState extends State<recommend> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("安利"),
        ),
      ),
    );  }
}
