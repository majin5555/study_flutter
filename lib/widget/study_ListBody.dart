import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   ListBody   列表体
 */

class StudyListBody extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study ListBody',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("ListBody 组件"),
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
        //不常用
        ListBody(
          //对其方式
          mainAxis: Axis.vertical,
          //内容是否反向
          reverse: false,
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 150,
              child: Text(
                "A",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
              child: Text(
                "B",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              color: Colors.orange,
              width: 50,
              height: 150,
              child: Text(
                "C",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
