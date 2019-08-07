import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'dart:ui';

var size = MediaQueryData.fromWindow(window).size;
double widthq = size.width;
double heightq = size.height;
var padding = MediaQueryData.fromWindow(window).padding;
double toolheight = padding.top;
VideoPlayerController _controller;
String url =
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';

class AutoPlay02 extends StatefulWidget {
  @override
  _AutoPlay02State createState() => _AutoPlay02State();
}

class _AutoPlay02State extends State<AutoPlay02> {
  @override
  GlobalKey anchorKey = GlobalKey();
  ScrollController _Scrollcontroller = new ScrollController();
  double offsetx = 0.0;
  double offsety = 0.0;

  double minpalyY = 0.0;
  double maxpalyY = 0.0;
  double videocenterpointY = 0.0;
  bool _autoplay = false;


  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(url);
    _Scrollcontroller.addListener(() {
      _position();
      _onplay();
    });
    setState(() {});
  }
  

  void dispose() {
    _controller.dispose();
    _Scrollcontroller.dispose();
//    chewieController.dispose();
    super.dispose();
  }

  void _onplay() {
    if (minpalyY <= videocenterpointY && videocenterpointY <= maxpalyY) {
      _autoplay = true;
      _controller.play();
    } else {
      _autoplay = false;
      _controller.pause();
    }
  }

  void _position() {
    final RenderBox renderBox = anchorKey.currentContext.findRenderObject();
    final videooffset = renderBox.localToGlobal(Offset.zero);
    offsetx = videooffset.dx;
    offsety = videooffset.dy;

    minpalyY =
        (heightq - toolheight - 30.0 - 200.0) / 2.0 + toolheight + 30.0;
    maxpalyY = minpalyY + 200.0;
    videocenterpointY = offsety + 200.0 / 2;
    setState(() {});

    print("x:$offsetx" + " "+"y:$offsety");
    print("播放区域最小Y：$minpalyY");
    print("播放区域最大Y：$maxpalyY");
    print("播放器中心点Y：$videocenterpointY");
    print("顶部状态栏高度：$toolheight");
  }

  Widget videoview() {
     return Chewie(
          controller: ChewieController(
            videoPlayerController: _controller,
            aspectRatio: 16 / 9,
            autoPlay: _autoplay,
            looping: true,
            placeholder: new Container(
              color: Colors.grey,
            ),
            autoInitialize: true,
          ));
  }
  void didUpdateWidget(AutoPlay02 oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
            child: AppBar(
              title: Text("autoplay"),
            ),
            preferredSize: Size.fromHeight(30.0)),
        body: SingleChildScrollView(
          controller: _Scrollcontroller,
          child: Column(
            children: <Widget>[
              Container(
                width: 300.0,
                height: 500.0,
                color: Colors.redAccent,
              ),
              Container(
                color: Colors.black,
                key: anchorKey,
                width: widthq,
                child: videoview(),

              ),
              Container(
                width: 300.0,
                height: 1000.0,
                color: Colors.redAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
