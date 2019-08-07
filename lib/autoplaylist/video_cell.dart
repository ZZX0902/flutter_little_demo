import 'package:flutter/material.dart';
import 'video.dart';
class VideoCell extends StatefulWidget {
  VideoView videoView;
  @override
  _VideoCellState createState() => _VideoCellState();
}

class _VideoCellState extends State<VideoCell> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.videoView = VideoView();
  }
  @override
  Widget build(BuildContext context) {
    return Container();

  }
}
