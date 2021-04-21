import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: 学习 Centerz布局组件
 */

class StudyCenter extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习Center',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Center 布局组件"),
        ),
        body: Center(
            child: Container(
          color: Colors.red,
          width: 200,
          height: 100,
          child: Center(
            child: Text(
              "居中布局",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        )),
      ),
    );
  }
}
