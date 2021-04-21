import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   AnimatedSwitcher  开关
 */

class StudyAnimatedSwitcher extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study AnimatedSwitcher',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar Study AnimatedSwitcher"),
          ),
          body: Center(
            child: DemoPage(),
          )),
    );
  }
}

class DemoPage extends StatefulWidget {
  const DemoPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SwitchDemoPage();
}

class SwitchDemoPage extends State<DemoPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //带动画的Switcher
        AnimatedSwitcher(
          //时长
          duration: const Duration(milliseconds: 500),
          //指定过度动画
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(
              child: child,
              scale: animation,
            );
          },
          //动画显示内容
          child: Text(
            "$_count",
            key: ValueKey<int>(_count),
            style: TextStyle(fontSize: 108),
          ),
        ),
        RaisedButton(
            child: const Text("点击+1"),
            onPressed: () {
              setState(() {
                _count++;
              });
            })
      ],
    );
  }
}
