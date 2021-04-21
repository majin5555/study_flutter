import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc:   StudyCheckBox  选择框
 */

class StudyCheckBox extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study CheckBox',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study CheckBox"),
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
  //当前选中的索引
  var selectIndex = 0;

  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Checkbox(
          //激活时候的颜色
          activeColor: Colors.red,
          //是否被选中
          value: 0 == selectIndex,
          //如果 tristate 的值为true value的值可能为null
          tristate: false,
          onChanged: (bool check) {
            setState(() {
              if (check) selectIndex = 0;
            });
          },
        ),
        Checkbox(
          //激活时候的颜色
          activeColor: Colors.red,
          //是否被选中
          value: 1 == selectIndex,
          onChanged: (bool check) {
            setState(() {
              if (check) selectIndex = 1;
            });
          },
        ),
        Checkbox(
          //激活时候的颜色
          activeColor: Colors.green,
          tristate: false,
          //是否被选中
          value: isSelect,
          onChanged: (bool check) {
            print(check);
            setState(() {
              isSelect = !isSelect;
            });
          },
        ),
      ],
    );
  }
}
