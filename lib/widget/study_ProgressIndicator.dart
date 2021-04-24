import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc:   ProgressIndicator    进度组件
 */

class StudyProgressIndicator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study ProgressIndicator',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("ProgressIndicator 进度组件"),
          ),
          body: Center(
            child: DemoPage(),
          )),
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
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CircularProgressIndicator(),
        SizedBox(
          height: 20,
        ),
        LinearProgressIndicator(
          backgroundColor: Colors.green,
          //进度的颜色
          valueColor: AlwaysStoppedAnimation(Colors.orange),
          //当前进度值
          //value:0.5 ,
        ),
      ],
    );
  }
}
