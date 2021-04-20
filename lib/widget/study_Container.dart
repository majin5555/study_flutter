

import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: Container容器
 */

class StudyContainer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container学习',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Container学习"),
        ),
        body: Center(
          //父容器
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(30.0),
            //内边距
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 10,
                ),
                borderRadius: BorderRadius.all(const Radius.circular(10))),
            // child: Text(
            //   "hello",
            //   style: TextStyle(color: Colors.blue, fontSize: 30),
            //  ),
            //子容器
            child: Container(
              color: Colors.green,//设置背景色
              margin: EdgeInsets.all(10.0), //外边距
            ),
          ),
        ),
      ),
    );
  }
}