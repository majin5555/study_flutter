import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   Image   资源图片
 */

class StudyImage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Image',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Image 组件"),
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
          //Image.file(file),
          //本地资源图片
          Image.asset("assets/images/logo.png"),
          //网络图片 可添加缩放系数
          Image.network(
            "https://img-blog.csdnimg.cn/img_convert/f59360c3a287213249e2ee72c97e43e1.png",
            scale: 5,
          ),
          //控制图片大小
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("assets/images/logo.png"),
          ),
        ],
      ),
    );
  }
}
