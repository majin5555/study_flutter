import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: 学习 SizedBox  组件
 */

class StudySizedBox extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习  SizedBox',
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar SizedBox  组件"),
          ),
          body: Center(
            //指定宽高并不具 子元素不允许超出指定大小的范围
            child: SizedBox(
              width: 50,
              height: 50,
              //限定图片大小
              child: Image.asset('assets/images/logo.png'),
             //子元素
             // child: Container(width: 10, height: 10, color: Colors.indigoAccent),
            ),
          )),
    );
  }
}
