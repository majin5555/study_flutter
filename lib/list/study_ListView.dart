import 'dart:async';
import 'dart:async';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/28
 * @desc:   ListView   列表组件
 */

List<String> CITYS_NAMES = ["北京", "上海", "广州", "深圳", "杭州", "苏州", "成都", "武汉"];

void main() {
  runApp(StudyListView());
}

class StudyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study ListView',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("下拉刷新"),
          ),
          body: DemoPage()),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      ///滚动到底部的判断条件
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _loadData() async {
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      List<String> list = List<String>.from(CITYS_NAMES);
      list.addAll(CITYS_NAMES);
      CITYS_NAMES = list;
    });
  }

  ///下拉刷新回调
  Future<Null> _handRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      CITYS_NAMES = CITYS_NAMES.reversed.toList(); //数组取反
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _handRefresh,
      child: ListView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        children: _buildList(),
      ),
    );
  }

  List<Widget> _buildList() {
    return CITYS_NAMES.map((city) => _item(city)).toList();
  }
}

Widget _item(city) {
  return Container(
    height: 100,
    margin: EdgeInsets.only(bottom: 5),
    alignment: Alignment.center,
    decoration: BoxDecoration(color: Colors.green),
    child: Text(
      city,
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
  );
}
