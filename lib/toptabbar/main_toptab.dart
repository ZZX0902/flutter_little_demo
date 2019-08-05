import 'package:flutter/material.dart';
import 'tabbar.dart';

class  toptabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
             child: button(),
        ),
      ),




    );
  }

}
class button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TabBarDemo()));
      },
      child: Text('tabbar'),
    );
  }

}
