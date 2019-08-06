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

String url = 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';
class AutoPlay extends StatefulWidget {
  @override
  _AutoPlayState createState() => _AutoPlayState();
}

class _AutoPlayState extends State<AutoPlay> {
  @override



  GlobalKey anchorKey = GlobalKey();
  ScrollController _Scrollcontroller;
  double offsetx = 0.0;
  double offsety = 0.0;
  double videowidth = 0.0;
  double videoheight = 0.0;
  double minpalyY = 0.0;
  double maxpalyY = 0.0;
  double videocenterpointY = 0.0;
  bool _autoplay=false;


//  void _showposition() {
//    final RenderBox renderBox = anchorKey.currentContext.findRenderObject();
//    final videooffset = renderBox.localToGlobal(Offset.zero);
//    final size = renderBox.size;
//    offsetx = videooffset.dx;
//    offsety = videooffset.dy;
//    videowidth = size.width;
//    videoheight = size.height;
//    minpalyY =
//        (heightq - toolheight - 30.0 - videoheight) / 2.0 + toolheight + 30.0;
//    maxpalyY = minpalyY + videoheight;
//    videocenterpointY = offsety + videoheight / 2;
//    setState(() {});
//
//    print("x:$offsetx" + " " + "y:$offsety");
//    print("播放器宽度：$videowidth");
//    print("播放器高度：$videoheight");
//    print("播放区域最小Y：$minpalyY");
//    print("播放区域最大Y：$maxpalyY");
//    print("播放器中心点Y：$videocenterpointY");
//    print("顶部状态栏高度：$toolheight");

//  }

  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(url);
    _Scrollcontroller = ScrollController();
    _Scrollcontroller.addListener(() {
      _position();
      if(minpalyY<=videocenterpointY&&videocenterpointY<=maxpalyY){
        _autoplay=true;
        _controller.play();
      }else{
        _autoplay=false;
        _controller.pause();
      }
    });
    setState(() {});
  }


  void dispose() {
//    videoPlayerController.dispose();
//    chewieController.dispose();
    super.dispose();
  }
  void _position(){
    final RenderBox renderBox = anchorKey.currentContext.findRenderObject();
    final videooffset = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;
    offsetx = videooffset.dx;
    offsety = videooffset.dy;
    videowidth = size.width;
    videoheight = size.height;
    minpalyY =
        (heightq - toolheight - 30.0 - videoheight) / 2.0 + toolheight + 30.0;
    maxpalyY = minpalyY + videoheight;
    videocenterpointY = offsety + videoheight / 2;
    setState(() {});

    print("x:$offsetx" + " " + "y:$offsety");
    print("播放器宽度：$videowidth");
    print("播放器高度：$videoheight");
    print("播放区域最小Y：$minpalyY");
    print("播放区域最大Y：$maxpalyY");
    print("播放器中心点Y：$videocenterpointY");
    print("顶部状态栏高度：$toolheight");
  }
  Widget videoview (BuildContext context){
    return Container(
      color: Colors.black,
      key: anchorKey,
      width: widthq,
      child:  Chewie(
          controller:  ChewieController(
            videoPlayerController: _controller,
            aspectRatio: 16 / 9,
            autoPlay: _autoplay,
            looping: true,
            placeholder: new Container(
              color: Colors.grey,
            ),

            autoInitialize: true,
          )

      ),
    );

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
              videoview(context),


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
