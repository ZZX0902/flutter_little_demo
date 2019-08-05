import 'package:flutter/cupertino.dart';

class Rightback extends StatefulWidget {
  @override
  _RightbackState createState() => _RightbackState();
}

class _RightbackState extends State<Rightback> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          color: CupertinoColors.activeGreen,
          child: CupertinoButton(
              child: Icon(CupertinoIcons.add),
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder:(BuildContext context) {
                  return Rightback();
                }));
              }),
        ),
      ),
    );
  }
}
