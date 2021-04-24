import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc:   ButtonBar   组件
 */

class StudyButtonBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study ButtonBar',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("ButtonBar 按钮容器"),
          ),
          body: Center(child: DemoPage())),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoAppBarPage();
}

class DemoAppBarPage extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      //末端安妮对齐方式
      child: ButtonBar(
        alignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          RaisedButton(
              child: Text(
                "按钮1",
              ),
              color: Colors.orange,
              onPressed: () {}),
          RaisedButton(
              child: Text(
                "按钮2",
              ),
              color: Colors.orange,
              onPressed: () {}),
          RaisedButton(
              child: Text(
                "按钮3",
              ),
              color: Colors.orange,
              onPressed: () {}),
        ],
      ),
    );
  }
}
