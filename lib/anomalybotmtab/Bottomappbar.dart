import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'pages/Self.dart';
import 'pages/Big.dart';
class Bottomappbar extends StatefulWidget {
  @override
  _BottomappbarState createState() => _BottomappbarState();
}

class _BottomappbarState extends State<Bottomappbar> {
  List<Widget> _list01 =List();
  int _index=0;
  void initState() {
    _list01..add(Home())..add(Self());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list01 [_index],
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Big()));
        },
        tooltip:'长按提示',
        child:
        Icon(
          Icons.add ,
          color: Colors .white,
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white ,
              onPressed: (){
                setState(() {
                  _index=0;

                });

              },
            ),
            IconButton(
              icon: Icon(Icons.airplay),
              color: Colors.white ,
              onPressed: (){
                setState(() {
                  _index=1;

                });
              },
            )
          ],
        ),
      ),
    );
  }
}
