import 'package:flutter/material.dart';
import 'custom_clipper.dart';


class Beziercurve extends StatefulWidget {
  @override
  _BeziercurveState createState() => _BeziercurveState();
}

class _BeziercurveState extends State<Beziercurve> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:HomePage (),
    );
  }
}
