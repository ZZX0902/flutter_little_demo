import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/time.dart';
import 'pages/self.dart';
import 'pages/page.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationcolor = Colors.lightBlue;
  int _currentIndex = 0;
  List<Widget> list01 = List();

  void initState() {
    list01..add(Home())..add(Time())..add(Self())..add(Page());
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: list01[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationcolor,
              ),
              title: Text(
                '主页',
                style: TextStyle(color: _BottomNavigationcolor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.access_alarm,
                color: _BottomNavigationcolor,
              ),
              title: Text(
                '时间',
                style: TextStyle(color: _BottomNavigationcolor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _BottomNavigationcolor,
              ),
              title: Text(
                '分类',
                style: TextStyle(color: _BottomNavigationcolor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: _BottomNavigationcolor,
              ),
              title: Text(
                '个人',
                style: TextStyle(color: _BottomNavigationcolor),
              )),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },

      ),
    );
  }
}
