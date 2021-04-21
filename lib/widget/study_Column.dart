import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc: 学习 Culomn 布局组件
 */

class StudyColomn extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习  Culomn',
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar Culomn 布局组件"),
          ),
          body: Center(
            child: Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.tealAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 60,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 100,
                    height: 60,
                  ),
                  Container(
                    color: Colors.indigoAccent,
                    width: 100,
                    height: 60,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
