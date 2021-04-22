import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   DecorationImage   装饰图片
 */

class StudyDecorationImage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study DecorationImage',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar DecorationImage 图片组件"),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageDemo();
}

class DemoPageDemo extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.pink,
          image: DecorationImage(
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.none,
            alignment: Alignment.bottomCenter
          ),),
      margin: EdgeInsets.only(left: 20, top: 20),
      child: Center(
        child: Text(
          "装饰图片",
          style: TextStyle(color: Colors.black,fontSize: 28),
        ),
      ),
    );
  }
}
