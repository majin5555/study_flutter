import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hellow/oop/generic_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   IconTheme   图标主题控件
 */

class StudyIconTheme extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study IconTheme',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar IconTheme 图标主题控件"),
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
      child: IconTheme(
        //opacity 透明度
        data: IconThemeData(color: Colors.red, opacity: 3.0),
        child: Row(
          children: [
            Icon(
              Icons.favorite,
              size: 48,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "喜欢",
                style: TextStyle(color: Colors.red,fontSize: 48),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
