import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/**
 * @author: Majin
 * @date: 2021/4/22
 * @desc:   AnimatedPadding  组件
 */

class StudyAnimatedPadding extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Study AnimatedPadding',
        color: Colors.orange,
        home: Scaffold(
            appBar: AppBar(
              title: Text("AppBar AnimatedPadding 组件"),
            ),
            body: DemoPage()));
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageDemo();
}

class DemoPageDemo extends State<DemoPage> {
  double paddingValue = 10;

  void _changePaddingVaule() {
    if (paddingValue == 10.0) {
      setState(() {
        paddingValue = 100.0;
      });
    } else {
      setState(() {
        paddingValue = 10.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.red,
            child: AnimatedPadding(
              //均衡的内边距
              padding: EdgeInsets.symmetric(
                horizontal: paddingValue,
                vertical: paddingValue,
              ),
              duration: const Duration(milliseconds: 1000),
              //动画类型
              curve: Curves.easeIn,
              child: Container(
                height: 200,
                color: Colors.green,
              ),
            ),
          ),
          RaisedButton(
              child: Text("点击切换"),
              onPressed: () {
                _changePaddingVaule();
              }),
        ],
      ),
    );
  }
}
