import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   ListView   列表组件
 */

class StudyListBody extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study ListView',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("ListView 列表组件"),
          ),
          body: Center(
            child: DemoPage(),
          )),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SwitchDemoPage();
}

class SwitchDemoPage extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


      ],
    );
  }
}
