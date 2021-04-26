import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/26
 * @desc: 搜索
 */

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //页面控制器
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text("搜索"),
      ),
    );
  }
}
