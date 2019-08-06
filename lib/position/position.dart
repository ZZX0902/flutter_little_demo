import 'package:flutter/material.dart';

class Position extends StatefulWidget {
  @override
  _PositionState createState() => _PositionState();
}

class _PositionState extends State<Position> {
  GlobalKey anchorKey = GlobalKey();
  ScrollController _Scrollcontroller;

  @override

  void _showposition() {
    final RenderBox renderBox = anchorKey.currentContext.findRenderObject();
    final offset = renderBox.localToGlobal(Offset.zero);
    var offsetx=offset.dx;
    var offsety=offset.dy;

    print("x:$offsetx"+" "+ "y:$offsety");


  }
  void initState() {
//    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
    super.initState();
    _Scrollcontroller = ScrollController();
    _Scrollcontroller.addListener((){
      _showposition();
    });

  }
//  _afterLayout(_) {
//    _showposition();
//  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("获取控件位置"),
        ),
        body:Center(
        child:SingleChildScrollView(
          controller: _Scrollcontroller,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300.0,
              height: 500.0,
              color: Colors.redAccent,
            ),
            Container(
              width: 300.0,
              height: 200.0,
              color: Colors.lightGreenAccent,
              key: anchorKey,
            ),
//          MaterialButton(
//            elevation: 5.0,
//            color: Colors.grey,
//            padding: EdgeInsets.all(15.0),
//            child: Text("Get Positions"),
//            onPressed: _showposition,
//          ),

            Container(
              width: 300.0,
              height: 500.0,
              color: Colors.redAccent,
            ),
          ],
        )),)
      ),
    );
  }
}
