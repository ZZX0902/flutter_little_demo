import 'package:flutter/material.dart';


class story extends StatefulWidget {
  @override
  _storyState createState() => _storyState();
}

class _storyState extends State<story> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("故事"),
        ),
      ),
    );
  }
}
