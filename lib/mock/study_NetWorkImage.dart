import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   NetWorkImage   网络图片
 */

void main() {
  runApp(StudyNetImage());
}


class StudyNetImage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study ImageFile',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("网络图片 缓存"),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CachedNetworkImage(
          imageUrl: "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic16.nipic.com%2F20110908%2F1836425_172718025374_2.jpg&refer=http%3A%2F%2Fpic16.nipic.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621996799&t=a89ba6eae71347b0ac1af06856f6d463",
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
    );
  }
}
