import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   ImageFile   资源图片
 */


void main() {
  runApp(StudyImageFile());
}

class StudyImageFile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study ImageFile',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar ImageFile 组件"),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageDemo();
}

class DemoPageDemo extends State<DemoPage> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

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
    return Center(
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
            onPressed: getImage,
            child: Text("点击选择图片"),
          ),
        ],
      ),
    );
  }
}
