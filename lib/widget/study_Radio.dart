import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc:   Radio  单选
 */

class StudyRadio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Radio',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study Radio"),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RadioDemo();
}

class RadioDemo extends State<DemoPage> {
  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Radio(
            activeColor: Colors.red,//控件颜色
            value: 1, //当groupValue 与value一直时候 是当前选中
            groupValue: groupValue,
            onChanged: (T) {
              setState(() {
                groupValue = T;
              });
            }),
        Radio(
            value: 2,
            groupValue: groupValue,
            onChanged: (T) {
              setState(() {
                groupValue = T;
              });
            }),
        Radio(
            value: 3,
            groupValue: groupValue,
            onChanged: (T) {
              setState(() {
                groupValue = T;
              });
            }),
      ],
    );
  }
}
