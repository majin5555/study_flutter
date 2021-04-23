import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc:   SnackBar   屏幕底部消息组件
 */

class StudySnackBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study SnackBar',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text(" SnackBar   屏幕底部消息组件"),
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
      child: GestureDetector(
        onTap: () {
          final snackbar = new SnackBar(
            content: Text("这是一个SnackBar"),
            backgroundColor: Colors.green,
            action: SnackBarAction(
              label: "取消",
              textColor: Colors.white,
              onPressed: () {},
            ),
            duration: Duration(milliseconds: 500),
          );
          //加载显示
          Scaffold.of(context).showSnackBar(snackbar);
        },
        child: Text("屏幕底部消息"),
      ),
    );
  }
}
