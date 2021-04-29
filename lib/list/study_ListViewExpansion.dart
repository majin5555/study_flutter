import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/28
 * @desc:   ListViewExpansion   列表组件
 */

const CITYS_NAMES = {
  "北京": [
    "东城",
    "西城",
    "朝阳",
    "产品",
    "丰台",
    "石景山",
    "海淀",
  ],
  "上海": ["1", "2"],
  "广州": ["3", "4"],
  "深圳": ["5", "6"],
  "杭州": ["7", "8"],
  "苏州": ["9", "10"],
  "成都": ["11", "12"],
  "武汉": ["13", "14"]
};

void main() {
  runApp(ListViewExpansion());
}

class ListViewExpansion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study ListViewExpansion',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("ListViewExpansion 折叠列表组件"),
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
    return ListView(
      scrollDirection: Axis.vertical,
      children: _buildList(),
    );
  }

  List<Widget> _buildList() {
    List<Widget> widgets = [];
    CITYS_NAMES.keys.forEach((key) {
      widgets.add(_item(key, CITYS_NAMES[key]));
    });

    return widgets;
  }
}

Widget _item(String city, List<String> subCitys) {
  return ExpansionTile(
    title: Text(
      city,
      style: TextStyle(color: Colors.black, fontSize: 20),
    ),
    children: subCitys.map((subCity) => _buildSub(subCity)).toList(),
  );
}

Widget _buildSub(String subCity) {
  return FractionallySizedBox(
    widthFactor: 1,
    child: Container(
      height: 50,
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(color: Colors.lightBlue),
      child: Text(subCity),
    ),
  );
}
