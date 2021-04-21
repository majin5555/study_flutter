import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: 学习 OverFlowBox  溢出组件
 */

class StudyOverFlowBox extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习  OverFlowBox',
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar OverFlowBox  组件"),
          ),
          body: Container(
            color: Colors.green,
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(50),
            child: OverflowBox(
              //对其方式
              alignment: Alignment.topLeft,
              //限制条件
              maxWidth: 300,
              maxHeight: 500,
              child: Container(
                color: Colors.blueGrey,
                width: 300,
                height: 300,
              ),
            ),
          )),
    );
  }
}
