import 'dart:io';
import 'dart:ui';
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
  List<File> _images = [];

  Future getImage(bool isTakePhoto) async {
    //取消弹框
    Navigator.pop(context);

    var image = await ImagePicker().getImage(
        source: isTakePhoto ? ImageSource.camera : ImageSource.gallery);

    setState(() {
      if (image != null)
        _images.add(new File(image.path));
      else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text("点击选择图片"),
            onPressed: _pickImage,
          ),
          SizedBox(height: 100),
          Center(
            child: Wrap(
              //布局方向为横向布局
              direction: Axis.horizontal,
              spacing: 8,
              runSpacing: 5,
              children: _genImages(),
            ),
          ),
        ],
      ),
    );
  }

  _genImages() {
    return _images
        .map((e) => Stack(
      children: [
        ClipRRect(
          //圆角效果
          borderRadius: BorderRadius.circular(10),
          child: Image.file(
            e,
            width: 80,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 5,
          top: 5,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _images.remove(e);
              });
            },
            //圆角删除按钮
            child: ClipOval(
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(color: Colors.black54),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        )
      ],
    ))
        .toList();
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
                color: Colors.grey,
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
