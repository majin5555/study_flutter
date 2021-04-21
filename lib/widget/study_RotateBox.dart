import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: 学习 RotatedBox  旋转组件
 */

class StudyRotatedBox extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习  RotatedBox',
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar RotatedBox  组件"),
          ),
          body: Center(
              //指定宽高并不具 子元素不允许超出指定大小的范围
              child: Column(
            children: [
              SizedBox(height: 20),
              RotatedBox(
                  child: Text(
                    "ABCD",
                    style: TextStyle(fontSize: 28, color: Colors.indigoAccent),
                  ),
                  quarterTurns: 1),
              SizedBox(height: 20),
              RotatedBox(
                  child: Text(
                    "ABCD",
                    style: TextStyle(fontSize: 28, color: Colors.indigoAccent),
                  ),
                  quarterTurns: 2),
              SizedBox(height: 20),
              RotatedBox(
                  child: Text(
                    "ABCD",
                    style: TextStyle(fontSize: 28, color: Colors.indigoAccent),
                  ),
                  quarterTurns: 3),
              SizedBox(height: 20),
              RotatedBox(
                  child: Text(
                    "ABCD",
                    style: TextStyle(fontSize: 28, color: Colors.indigoAccent),
                  ),
                  quarterTurns: 4),
            ],
          ))),
    );
  }
}
