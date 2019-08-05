import 'package:flutter/material.dart';
import 'personnal_tab_pages/datum.dart';
import 'personnal_tab_pages/recommend.dart';
import 'personnal_tab_pages/story.dart';

class TabBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TabBarDemoState();
  }
}

class TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  Color selectColor, unselectedColor;
  TextStyle selectStyle, unselectedStyle;
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    selectColor = Color.fromARGB(255, 38, 38, 38);
    unselectedColor = Color.fromARGB(255, 161, 161, 161);
    selectStyle = TextStyle(fontSize: 17, color: selectColor);
    unselectedStyle = TextStyle(fontSize: 17, color: selectColor);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthq = size.width;
    final heightq = size.height;
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('顶部tab切换'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: widthq,
              height: 50.0,
              child: TabBar(
                controller: _tabController,
                indicatorColor: Color.fromARGB(255, 225, 57, 42),
                labelColor: Color.fromARGB(255, 38, 38, 38),
                indicatorWeight: 2.0,
                labelStyle: selectStyle,
                unselectedLabelColor: unselectedColor,
                unselectedLabelStyle: unselectedStyle,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                  new Tab(
                    icon: new Text('资料'),
                  ),
                  new Tab(
                    icon: new Text('安利'),
                  ),
                  new Tab(
                    icon: new Text('故事'),
                  ),
                ],
              ),
            ),
            Expanded(
//
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  new Center(child: datum()),
                  new Center(child: recommend()),
                  new Center(child: story()),
                ],
              ),
            )
          ],
        ));
  }
}
