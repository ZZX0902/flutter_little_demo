import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

final videoPlayerController = VideoPlayerController.network(
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');

final chewieController = ChewieController(
  videoPlayerController: videoPlayerController,
  aspectRatio: 16/9,
  autoPlay: true,
  looping: true,
  placeholder: new Container(
    color: Colors.grey,
  ),
  autoInitialize: !true,

);

final playerWidget = Chewie(
  controller: chewieController,
);


class videoplayerchewie extends StatefulWidget {
  @override
  _videoplayerchewieState createState() => _videoplayerchewieState();
}

class _videoplayerchewieState extends State<videoplayerchewie> {
  @override
  String url = 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.amberAccent, child: Text("chewie")),
        ),
        body:SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              playerWidget,
//              playerWidget,
//              playerWidget,
//              playerWidget,
//              playerWidget,
//              playerWidget,
//              playerWidget,
//              playerWidget,
            ],
          ),
        ),
      ),
    );
  }
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
