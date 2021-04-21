import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc:   StudyCheckBoxListTitle  选择框
 */

class StudyCheckBoxListTitle extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study StudyCheckBoxListTitle',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study StudyCheckBoxListTitle"),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CheckBoxDemo();
}

class CheckBoxDemo extends State<DemoPage> {
  bool _value = false;

  void _valueChange(bool value) {
    for (var i = 0; i < isChecks.length; i++) {
      isChecks[i] = value;
    }
    setState(() {
      _value = value;
    });
  }

  bool isCheck = false;
  List<bool> isChecks = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: CheckboxListTile(
            //激活时候的颜色
            activeColor: Colors.red,
            //是否被选中
            value: _value,
            dense: false,
            //文字是有对齐
            isThreeLine: false,
            //文字是否三行显示
            title: Text("文本内容"),
            //文本与控件的位置
            controlAffinity: ListTileControlAffinity.platform,
            subtitle: Text("勾选下列选项"),
            secondary: Icon(Icons.archive),
            //如果 tristate 的值为true value的值可能为null
            tristate: false,
            onChanged: _valueChange,
          ),
        ),
        Center(
          child: CheckboxListTile(
            //激活时候的颜色
            activeColor: _value ? Colors.red : Colors.green,
            //是否被选中
            value: isChecks[0],
            title: Text("选项1"),
            //文本与控件的位置
            controlAffinity: ListTileControlAffinity.platform,

            //如果 tristate 的值为true value的值可能为null
            tristate: false,
            onChanged: (bool) {
              setState(() {
                isChecks[0] = bool;
              });
            },
          ),
        ),
        Center(
          child: CheckboxListTile(
            //激活时候的颜色
            activeColor: _value ? Colors.red : Colors.green,
            //是否被选中
            value: isChecks[1],
            title: Text("选项2"),
            //文本与控件的位置
            controlAffinity: ListTileControlAffinity.platform,

            //如果 tristate 的值为true value的值可能为null
            tristate: false,
            onChanged: (bool) {
              setState(() {
                isChecks[1] = bool;
              });
            },
          ),
        ),
        Center(
          child: CheckboxListTile(
            //激活时候的颜色
            activeColor: _value ? Colors.red : Colors.green,
            //是否被选中
            value: isChecks[2],
            title: Text("选项3"),
            //文本与控件的位置
            controlAffinity: ListTileControlAffinity.platform,

            //如果 tristate 的值为true value的值可能为null
            tristate: false,
            onChanged: (bool) {
              setState(() {
                isChecks[2] = bool;
              });
            },
          ),
        ),
        Center(
          child: CheckboxListTile(
            //激活时候的颜色
            activeColor: _value ? Colors.red : Colors.green,
            //是否被选中
            value: isChecks[3],
            title: Text("选项4"),
            //文本与控件的位置
            controlAffinity: ListTileControlAffinity.platform,

            //如果 tristate 的值为true value的值可能为null
            tristate: false,
            onChanged: (bool) {
              setState(() {
                isChecks[3] = bool;
              });
            },
          ),
        ),
      ],
    );
  }
}
