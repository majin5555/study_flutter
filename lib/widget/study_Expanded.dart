import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   Expanded   组件
 */

class StudyExpanded extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Expanded',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Expanded"),
        ),
        body: Row(
          children: [
            RaisedButton(
                color: Colors.green, child: Text("绿色按钮"), onPressed: () {}),
            //填充所有空间
            Expanded(
              flex: 1,
              child: RaisedButton(
                  color: Colors.blue, child: Text("蓝色按钮"), onPressed: () {}),
            ),
            //填充剩余可能的空间
            Flexible(
              flex: 1,
              child: RaisedButton(
                  color: Colors.pink, child: Text("粉色按钮"), onPressed: () {}),
            ),
            RaisedButton(
                color: Colors.red, child: Text("红色按钮"), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
