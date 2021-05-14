import 'package:flutter/material.dart';
import 'package:flutter_app_hellow/oop/generic_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   IconData   字体图标组件
 */


void main() {
  runApp(StudyIconData());
}

class StudyIconData extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study IconData',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar IconData 字体图标组件"),
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
      child: Icon(
        IconData(0xe62, fontFamily: 'MaterialIcons'),
        color: Colors.red,
      ),
    );
  }
}
