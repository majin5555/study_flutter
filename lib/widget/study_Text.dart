import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: 学习Text 组件
 */

class StudyText extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text学习',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Text学习"),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Text(
              "hello1",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 48.0,
                  decoration: TextDecoration.lineThrough, //横穿线
                  decorationColor: Colors.black),
            ),
            Text(
              "下滑线",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 48.0,
                  decoration: TextDecoration.underline, //下划线
                  decorationColor: Colors.black),
            ),
            Text(
              "虚线上划线+23+倾斜",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 32.0,
                  decoration: TextDecoration.overline,
                  //上虚线
                  decorationStyle: TextDecorationStyle.dashed,
                  decorationColor: Colors.deepPurpleAccent),
            ),
            Text(
              "36+加粗",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 36.0,
                  fontStyle: FontStyle.italic,
                  //倾斜
                  fontWeight: FontWeight.bold,
                  decorationColor: Colors.red),
            ),
            Text(
              "自定义字体",
              style: TextStyle(
                  color: Colors.deepPurple, fontSize: 36.0,
                  fontFamily: "Candara"
                ),
            ),
          ],
        )),
      ),
    );
  }
}
