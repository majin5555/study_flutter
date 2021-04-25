import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/**
 * @author: Majin
 * @date: 2021/4/25
 * @desc: 拍照app
 */

class PhotoApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DynamicTheme',
        home: Scaffold(
            appBar: AppBar(
              title: Text("拍照App"),
            ),
            body: PhotoAppContent()));
  }
}

class PhotoAppContent extends StatefulWidget {
  @override
  State createState() => _PhotoState();
}

class _PhotoState extends State<PhotoAppContent> {
  File _image;

  Future getImage(bool isTakePhoto) async {
    Navigator.pop(context);
    final pickedFile = await ImagePicker().getImage(
        source: isTakePhoto ? ImageSource.camera : ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: _image == null
                ? Text("你还未选择任何图片？")
                : Image.file(
                    _image,
                    scale: 9,
                    fit: BoxFit.scaleDown,
                  ),
          ),
          RaisedButton(
            child: Text("点击选择图片"),
            //  onPressed: getImage,
            onPressed: _pickImage,
          ),
        ],
      ),
    );
  }

  _pickImage() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 140,
          child: Column(
            children: <Widget>[
              _item("拍照", true),
              Divider(
                height: 10.0,
                indent: 60.0,
                color: Colors.red,
              ),
              _item("从相册选择", false),
            ],
          ),
        );
      },
    );
  }

  _item(String tiltle, bool isTakePhoto) {
    return GestureDetector(
      child: ListTile(
        leading: Icon(isTakePhoto ? Icons.camera : Icons.photo_library),
        title: Text(tiltle),
        onTap: () => getImage(isTakePhoto),
      ),
    );
  }
}
