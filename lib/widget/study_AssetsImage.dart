import 'package:flutter/material.dart';
import 'package:flutter_app_hellow/widget/study_AnimatedPadding.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   AssetImage   资源图片
 */

class StudyAssetImage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study AssetImage',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar AssetImage 组件"),
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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
          ),
          // Container(
          //   child: Image(
          //     image: AssetImage("assets/images/knowledge.png"),
          //   ),
          // ),
          Image(image: ExactAssetImage("assets/images/knowledge.png", scale: 9)),//可缩放的图片组件 （scale 值越大 图片越小）
        ],
      ),
    );
  }
}
