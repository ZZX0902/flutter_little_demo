import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';


class imagepicker extends StatefulWidget {
  @override
  _imagepickerState createState() => _imagepickerState();
}

class _imagepickerState extends State<imagepicker> {

  @override
  Future<File> _imageFile;

  void _selectedImage() {
    setState(() {
      _imageFile = ImagePicker.pickImage(source: ImageSource.gallery);
    });
  }
  Widget _previewImage() {
    return FutureBuilder<File>(
        future: _imageFile,
        builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.data != null) {
            return new ClipRect(
              child: SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: Image.file(snapshot.data, fit: BoxFit.cover)
              ),
            );
          } else {
            return new Image.asset("images/icon_tabbar_mine_normal.png", height: 70.0, width: 70.0);
          }
        });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              child: RaisedButton(
                  onPressed: _selectedImage),
            ),
            Container(
                width: 100.0,
                height: 100.0,
                child: _previewImage()
            ),

          ],
        ),
      ),
    );



  }
}
