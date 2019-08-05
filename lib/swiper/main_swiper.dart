import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_swiper/flutter_swiper.dart';
var size = MediaQueryData.fromWindow(window).size;
var widthq = size.width;
var heightq = size.height;
class swiper extends StatefulWidget {

  @override
  _swiperState createState() => _swiperState();

}

class _swiperState extends State<swiper> {
  @override
  List<Widget> imageList = List();

  void initState() {
    imageList
      ..add(Image.network(
        'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2726034926,4129010873&fm=26&gp=0.jpg',
        fit: BoxFit.fill,
      ))
      ..add(Image.network(
        'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3485348007,2192172119&fm=26&gp=0.jpg',
        fit: BoxFit.fill,
      ))
      ..add(Image.network(
        'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2594792439,969125047&fm=26&gp=0.jpg',
        fit: BoxFit.fill,
      ))
      ..add(Image.network(
        'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=190488632,3936347730&fm=26&gp=0.jpg',
        fit: BoxFit.fill,
      ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(title: Text('swiper'),),
        body: Container(
          width: widthq,
          child: firstSwiperView(),
        ),
      ),
    );
  }
  Widget firstSwiperView() {
    return Container(
      width: widthq,
      height: 345,
      child: Swiper(
        itemCount: 4,
        itemBuilder: _swiperBuilder,
        pagination: SwiperPagination(
            alignment: Alignment.topRight,
            margin:  EdgeInsets.fromLTRB(0, 0, 20, 10),
            builder: FractionPaginationBuilder(
              color: Colors.white,
              activeColor: Colors.redAccent,
              activeFontSize: 20,
            )

        ),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: false,
//        onTap: (index) => print('点击了第$index'),
      ),
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (imageList[index]);
  }




}


