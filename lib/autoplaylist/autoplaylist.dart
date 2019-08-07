import 'package:flutter/material.dart';
import 'dart:ui';
import 'video.dart';
import 'package:flutter_little_demo/my_list_instance.dart';


var size = MediaQueryData.fromWindow(window).size;
double widthq = size.width;
double heightq = size.height;
var padding = MediaQueryData.fromWindow(window).padding;
double toolheight = padding.top;




class Autoplaylist extends StatefulWidget {
  @override
  _AutoplaylistState createState() => _AutoplaylistState();
}

class _AutoplaylistState extends State<Autoplaylist> {
  @override
  ScrollController _Scrollcontroller = new ScrollController();



  bool _isplay0=false;
  bool _isauto0=false;
  double offsetx = 0.0;
  double offsety = 0.0;
  double minpalyY = 0.0;
  double maxpalyY = 0.0;
  double videocenterpointY = 0.0;


  GlobalKey anchorKey0 = GlobalKey();
  GlobalKey anchorKey1 = GlobalKey();


  List videolist = new List();

  VideoView _videoView;

  ListInstance l;



  void initState() {
    super.initState();
    Future f =  ListInstance.getInstance();
    f.then((value){
      l = value;
    });
    videolist.add(_videoView);
    _Scrollcontroller.addListener(() {
      _position();
      _onplay();
      print("++++++${anchorKey1.currentWidget.toString()}+++++++");
//      print(_isauto0);
//      print(_isplay0);
    });
    setState(() {});
  }
//  void _onplay(GlobalKey g) {

    void _onplay() {

    if (minpalyY <= videocenterpointY && videocenterpointY <= maxpalyY) {
      _isauto0 = true;
      _isplay0=true;
//      _videoView = l.list[0];
      l.list[0].controller.play();

    } else {
      _isauto0 = false;
      _isplay0=false;
      l.list[0].controller.pause();
    }
//    setState(() {});

  }

  void _position() {
    for(int i =0 ;i<l.list.length;i++){
      GlobalKey g = l.list[i];
//      g.currentWidget; //videoCell
    }
    final RenderBox renderBox0 = anchorKey0.currentContext.findRenderObject();
    final videooffset = renderBox0.localToGlobal(Offset.zero);
    offsetx = videooffset.dx;
    offsety = videooffset.dy;
    minpalyY =
        (heightq - toolheight - 30.0 - 200.0) / 2.0 + toolheight + 30.0;
    maxpalyY = minpalyY + 200.0;
    videocenterpointY = offsety + 200.0 / 2;

    print("x:$offsetx" + " "+"y:$offsety");
    print("播放区域最小Y：$minpalyY");
    print("播放区域最大Y：$maxpalyY");
    print("播放器中心点Y：$videocenterpointY");
    print("顶部状态栏高度：$toolheight");
  }

  Widget createVideoView(){
    _videoView = VideoView(isplay:_isplay0,isauto:_isauto0,key: anchorKey1,);
    print("---${_videoView.toString()}---");
    return _videoView;
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('httplist'),
        ),
        body: Center(
          child: Container(
            width: widthq,
            height: heightq,
            child: ListView.separated(controller: _Scrollcontroller, itemBuilder: (context,index){
              return Column(
                children: <Widget>[
                  Container(
                    width: 300.0,
                    height: 500.0,
                    color: Colors.redAccent,
                  ),
                  Container(
                    color: Colors.black,
                    key: anchorKey0,
                    width: widthq,
                    child: createVideoView(),
                  ),
//                  Container(
//                    color: Colors.black,
//                    key: anchorKey,
//                    width: widthq,
//                    child: VideoView(),
//
//                  ),
                  Container(
                    width: 300.0,
                    height: 1000.0,
                    color: Colors.redAccent,
                  ),

                ],
              );
            },
                separatorBuilder: (context,index)=>Divider(), itemCount: 3),

          ),
        ),
      ),
    );
  }
}


class vv  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

