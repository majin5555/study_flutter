import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc:   RadioListTitle  单选
 */

class StudyRadioListTitle extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study RadioListTitle',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study RadioListTitle"),
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
  String value = "1";

  onChange(v) {
    setState(() {
      value = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RadioListTile<String>(
            activeColor: Colors.red,
            //控件颜色
            title: const Text("星期一"),
            value: "1",
            secondary: Icon(Icons.print),
            groupValue: this.value,
            isThreeLine: false,
            subtitle: const Text("Monday"),
            onChanged: onChange),
        RadioListTile<String>(
            activeColor: Colors.red,
            //控件颜色
            title: const Text("星期二"),
            secondary: Icon(Icons.print),
            value: "2",
            groupValue: this.value,
            isThreeLine: false,
            subtitle: const Text("Tuesday"),
            onChanged: onChange),
      ],
    );
  }
}
