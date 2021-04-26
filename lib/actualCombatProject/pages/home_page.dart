import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/26
 * @desc: 首页
 */

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //页面控制器
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text("首页"),
      ),
    );
  }
}
