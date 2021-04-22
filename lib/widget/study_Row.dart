import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: 学习 Row 布局组件
 */

class StudyRow extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习  Row',
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar Row 布局组件"),
          ),
          body: Center(
            child: Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.tealAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 50,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 100,
                    height: 50,
                  ),
                  Container(
                    color: Colors.indigoAccent,
                    width: 100,
                    height: 50,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
