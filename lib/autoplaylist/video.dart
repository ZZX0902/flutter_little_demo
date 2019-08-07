import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_little_demo/my_list_instance.dart';
class VideoView extends StatefulWidget {
  @override
  final bool isplay;
  final bool isauto;
//  GlobalKey globalKey = GlobalKey();
  VideoPlayerController controller;

  VideoView({Key key, this.isplay, this.isauto}) : super(key: key);

  _VideoViewState createState() => _VideoViewState();

}

class _VideoViewState extends State<VideoView> {
  @override
  bool _autoplay = false;

  String url =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';

  void initState() {
    super.initState();
    ListInstance l;
    Future f =  ListInstance.getInstance();
    f.then((value){
      l = value;
      l.list.add(widget);
      print("=============${widget.toString()}---");
    });
    widget.controller = VideoPlayerController.network(url);
//    _controller.addListener(() {
      playvideo(widget.isplay);
      antoplay(widget.isauto);
      print("++++++=======${widget.isplay}========================${widget.isauto}====================================");
//    });
//    setState(() {});
  }
  @override
  void dispose() {
    // TODO: implement dispose
    widget.controller.dispose();
    widget.controller.pause();
    super.dispose();
  }

  void playvideo(isplay) {
    if (isplay) {
      widget.controller.play();
    } else {
      widget.controller.pause();
    }
  }

  void antoplay(isauto) {
    if (isauto ) {
      _autoplay = true;
    } else {
      _autoplay = false;
    }
  }

  Widget build(BuildContext context) {
    return Chewie(
        controller: ChewieController(
      videoPlayerController: widget.controller,
      aspectRatio: 16 / 9,
      autoPlay: _autoplay,
      looping: true,
      placeholder: new Container(
        color: Colors.grey,
      ),
      autoInitialize: true,
    ));
  }
}


