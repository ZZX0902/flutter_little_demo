import 'package:flutter/material.dart';
import 'skipcartoon/main_skipcartton.dart';
import 'bottom_tab/main_bottomtab.dart';
import 'anomalybotmtab/main_anbtomtab.dart';
import 'swiper/main_swiper.dart';
import 'toptabbar/main_toptab.dart';
import 'imagepicker/main_imagepicker.dart';
import 'BoxDecoration/main_BoxDecoration.dart';
import 'Textfield/textfield.dart';
import 'shared_preferences/sharedpreferences.dart';
import 'rightback/rightback.dart';
import 'Beziercurve/Beziercurve.dart';
import 'videoplayer/videoplayer.dart';
import 'videoplayerchewie/videoplayerchewie.dart';
import 'position/position.dart';
import 'videopositionauto/antoplay.dart';
import 'autoplay2/autoplay2.dart';
import 'autoplaylist/autoplaylist.dart';
void main() => runApp(MaterialApp(
  title:'flutter_little_demo',
  home: Start(),
));
class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter demo'),
        elevation: 0.0,
      ),
      body:Center(
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: <Widget>[
            RouteButton(),
            RouteButton2(),
            RouteButton3(),
            RouteButton4(),
            RouteButton5(),
            RouteButton6(),
            RouteButton7(),
            RouteButton8(),
            RouteButton9(),
            RouteButton10(),
            RouteButton11(),
            RouteButton12(),
            RouteButton15(),
            RouteButton16(),
            RouteButton17(),

            RouteButton13(),
            RouteButton14(),


          ],
        )
      )

      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => FirstPage()));      },
      child: Text('跳转动画'),
    );
  }

}
class RouteButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => bottomtab()));      },
      child: Text('普通底部导航'),
    );
  }

}
class RouteButton3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => anbotmtab()));      },
      child: Text('不规则底部导航'),
    );
  }

}
class RouteButton4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => swiper()));      },
      child: Text('swiper'),
    );
  }

}
class RouteButton5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => toptabbar()));      },
      child: Text('顶部导航栏'),
    );
  }

}
class RouteButton6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => imagepicker()));      },
      child: Text('ImagePicker'),
    );
  }

}
class RouteButton7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BoxDecoration01()));      },
      child: Text('矩形圆角'),
    );
  }

}
class RouteButton8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Textfield01()));      },
      child: Text('Textfield'),
    );
  }

}
class RouteButton9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Sharedpreferences01()));      },
      child: Text('shared_preferences'),
    );
  }

}
class RouteButton10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Rightback()));      },
      child: Text('右滑返回'),
    );
  }

}
class RouteButton11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Beziercurve()));      },
      child: Text('Bézier curve'),
    );
  }

}
class RouteButton12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => videoplayer()));      },
      child: Text('视频播放器'),
    );
  }

}
class RouteButton13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => videoplayerchewie()));      },
      child: Text('视频播放器chewie'),
    );
  }

}
class RouteButton14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Position()));},
      child: Text('获取控件位置'),
    );
  }

}
class RouteButton15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AutoPlay()));},
      child: Text("获取屏幕位置播放器自动播放"),
    );
  }

}
class RouteButton16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AutoPlay02()));},
      child: Text("获取屏幕位置播放器自动播放02"),
    );
  }

}
class RouteButton17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Autoplaylist()));},
      child: Text("获取屏幕位置播放器自动播放list"),
    );
  }

}