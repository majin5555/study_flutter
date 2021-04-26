import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/26
 * @desc: 旅拍
 */

class TravelPage extends StatefulWidget {
  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  //页面控制器
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text("旅拍"),
      ),
    );
  }
}
