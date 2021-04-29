import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/28
 * @desc:   Griview   网格布局
 */

const CITYS_NAMES = ["北京", "上海", "广州", "深圳", "杭州", "苏州", "成都", "武汉"];

void main() {
  runApp(StudyGridView());
}

class StudyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Gridview 网格布局"),
          ),
          body: Center(
            child: DemoPage(),
          )),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: _buildList(),
    );
  }
}

List<Widget> _buildList() {
  return CITYS_NAMES.map((city) => _item(city)).toList();
}

Widget _item(String city) {
  return Container(
    height: 80,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(color: Colors.green),
    child: Center(
      child: Text(
        city,
        style: TextStyle(color: Colors.orange, fontSize: 20),
      ),
    ),
  );
}
