import 'package:flutter/material.dart';


class datum extends StatefulWidget {
  @override
  _datumState createState() => _datumState();
}

class _datumState extends State<datum> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("资料"),
        ),
      ),
    );
  }
}
