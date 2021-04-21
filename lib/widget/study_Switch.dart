import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc:   Switch  开关
 */

class StudySwitch extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Switch',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study Switch"),
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
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //创建方式1
        Switch(
            value: check,
            onChanged: (bool value) {
              setState(() {
                check = !value;
              });
            }),
        //创建方式2
        Switch.adaptive(
            value: check,
            //激活时颜色
            activeColor: Colors.pink,
            //非激活时颜色
            inactiveThumbColor: Colors.green,
            //非激活时候轨道颜色
            inactiveTrackColor: Colors.yellow,
            onChanged: (bool value) {
              setState(() {
                check = !check;
              });
            }),
        SizedBox(
          width: 100,
          height: 30,
          child: Switch.adaptive(
              value: check,
              //激活时颜色
              activeColor: Colors.blue,
              //非激活时颜色
              inactiveThumbColor: Colors.green,
              //非激活时候轨道颜色
              inactiveTrackColor: Colors.yellow,
              //激活时按钮的背景图片
              activeThumbImage: NetworkImage("https://flutterchina.club/images/homepage/screenshot-3.png"),
              //非激活时按钮的背景图片
              inactiveThumbImage:NetworkImage("https://flutterchina.club/images/homepage/screenshot-2.png") ,
              onChanged: (bool value) {
                setState(() {
                  check = !check;
                });
              }),
        ),
      ],
    );
  }
}
