import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   Align   组件
 */

class StudyAlign extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Align',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar Align"),
          ),
          body: Container(
            color: Colors.red,
            child: Align(
              //   alignment: Alignment.bottomCenter,
              //对其方式是用 X Y 来表示
              alignment: Alignment(0.0, 0.0),
              //宽高 填充的倍数              widthFactor: 3.0, //子元素的3倍
              heightFactor: 2.0,
              child: Container(
                color: Colors.green,
                width: 100,
                height: 50,
                child: Text(
                  "Align",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )),
    );
  }
}
