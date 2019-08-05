import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipper(),
            child: Container(
              color: Colors.lightBlueAccent,
              height: 200.0,

            ),
          )
        ],
      ),
    );
  }
}


class BottomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-50);
    var firstContPoint = Offset(size.width/2,size.height);
    var firstendPoint = Offset(size.width,size.height-50);

    path.quadraticBezierTo(firstContPoint.dx, firstContPoint.dy, firstendPoint.dx, firstendPoint.dy);
    path.lineTo(size.width, size.height-50);
    path.lineTo(size.width, 0);

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
     return false;
  }
}
