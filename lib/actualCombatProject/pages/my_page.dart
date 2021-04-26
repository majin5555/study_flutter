import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/26
 * @desc: 首页
 */

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  //页面控制器
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text("我的"),
      ),
    );
  }
}
