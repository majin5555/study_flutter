import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc: DropDownMenuItem 下拉菜单按钮
 */

class StudyDropDownMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudyDropDownMenuItem学习',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar StudyDropDownMenuItem学习"),
        ),
        body: Center(
          child: DemoPage(),
        ),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  String dropdownValue = "One";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text("下拉菜单按钮"),
        trailing: DropdownButton(
          value: dropdownValue,
          onChanged: (String val) {
            setState(() {
              dropdownValue = val;
            });
          },
          items: <String>[
            "One",
            "Two",
            "Three",
            "Four",
          ].map<DropdownMenuItem<String>>((String value) {
            //沉浸每一个可选项
            return DropdownMenuItem(value: value, child: Text("value $value"));
          }).toList(),
        ),
      ),
    );
  }
}
