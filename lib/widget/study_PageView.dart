import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hellow/widget/study_DatePicker.dart';

/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc: PageView 滑动页面组件
 */

class StudyPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageView学习',
      home: Scaffold(
        appBar: AppBar(
          title: Text("PageView学习"),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: PageView(
        //翻滚方向
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "这是第1页",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "这是第2页",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "这是第3页",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "这是第4页",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "这是第5页",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
