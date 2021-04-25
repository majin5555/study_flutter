import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   Chip    标签组件
 */

class StudyChip extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Chip',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chip 组件"),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  List<String> _tags = ["Android", "Ios", "Windows", "MacOs"];

  String _action = "Android";
  String _Choice = "Ios";

  List<String> _selected = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            Chip(label: Text("Flutter")),
            Chip(
              label: Text("Flutter2"),
              backgroundColor: Colors.red,
            ),
            Chip(
              label: Text("Flutter3"),
              avatar: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text("马"),
              ),
            ),
            Chip(
              label: Text("Android"),
              //删除回调
              onDeleted: () {},
              deleteIcon: Icon(Icons.home),
              deleteIconColor: Colors.red,
              deleteButtonTooltipMessage: "删除这个标签",
            ),
            Divider(
              color: Colors.red,
            ),
            //从左边到右排列
            //可删除的Chip
            Wrap(
              spacing: 8,
              children: _tags.map((tag) {
                return Chip(
                  label: Text(tag),
                  onDeleted: () {
                    setState(() {
                      _tags.remove(tag);
                    });
                  },
                );
              }).toList(),
            ),
            Wrap(
              spacing: 8,
              children: _tags.map((tag) {
                return ActionChip(
                  label: Text(tag),
                  onPressed: () {
                    setState(() {
                      _action = tag;
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.red,
            ),
            Container(
              width: 200,
              child: Text("$_selected.toString()"),
            ),
            Wrap(
              spacing: 8,
              children: _tags.map((tag) {
                return FilterChip(
                  label: Text(tag),
                  selected: _selected.contains(tag),
                  onSelected: (value) {
                    setState(() {
                      if (_selected.contains(tag)) {
                        _selected.remove(tag);
                      } else {
                        _selected.add(tag);
                      }
                    });
                  },
                );
              }).toList(),
            ),

            Divider(
              color: Colors.red,
            ),
            Container(
              width: 200,
              child: Text("$_Choice.toString()"),
            ),
            Wrap(
              spacing: 8,
              children: _tags.map((tag) {
                return ChoiceChip(
                  label: Text(tag),
                  selected: _Choice == tag,
                  selectedColor: Colors.white,
                  onSelected: (value) {
                    setState(() {
                      _Choice = tag;
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
