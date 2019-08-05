import 'package:flutter/material.dart';
import 'dart:ui';

class Textfield01 extends StatefulWidget {
  @override
  _Textfield01State createState() => _Textfield01State();
}

class _Textfield01State extends State<Textfield01> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQueryData.fromWindow(window).size.height,
          width: MediaQueryData.fromWindow(window).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Expanded(
                child: Container(
                  color: Colors.lightBlue,
                ),
              ),
//              Container(
//                width: 400,
//                height: 100,
//                color: Colors.greenAccent,
//                child: TextField(),
//              )
              Container(
                height: 50.0,
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          FocusScope.of(context)
                              .requestFocus(FocusNode());
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 8),
                        child: IconButton(
                            icon: Icon(
                              Icons.format_align_center,
                            ),
                            onPressed: () {
                            }),
                      ),
                    ),
                    Expanded(child:TextField()),
                    Container(
                      width: 100,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.sentiment_satisfied,
                              ),
                              onPressed: () {
                                print("表情");
                              }),
                          IconButton(
                              icon: Icon(
                                Icons.control_point,
                              ),
                              onPressed: () {
                                setState(() {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                });
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
