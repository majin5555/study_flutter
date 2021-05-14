import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc:   IconButton  按钮组件
 */

void main() {
  runApp(StudyIconButton());
}

class StudyIconButton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study IconButton',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study IconButton"),
        ),
        body: Center(
          child: Container(
            width: 200,
            decoration: BoxDecoration(color: Colors.red),
            height: 200,
            child: IconButton(
              iconSize: 100,
              icon: Icon(Icons.print),
              color: Colors.green,
              tooltip: "提示文本",
              //根据父容器来决定图标的位置
              alignment: AlignmentDirectional.center,
              onPressed: () {
                print("onPressed-------------");
              },
            ),
          ),
        ),
      ),
    );
  }
}
