import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   SwitchListTitle  开关
 */

class StudySwitchListTitle extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study SwitchListTitle',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study SwitchListTitle"),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SwitchDemo();
}

class SwitchDemo extends State<DemoPage> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SwitchListTile(
            activeColor: Colors.red,
            title: const Text("是否打印"),
            secondary: Icon(Icons.print),
            subtitle: Text("子标题-打印一张照片"),
            value: check,
            onChanged: (bool value) {
              setState(() {
                check = value;
              });
            })
      ],
    );
  }
}
