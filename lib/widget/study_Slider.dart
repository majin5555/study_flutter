import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   Slider  滑动组件
 */

class StudySlider extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Slider',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar Study Slider"),
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
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      min: 0,
      max: 100,
      activeColor: Colors.red,
      inactiveColor: Colors.black,
      label: "当前音量$value",
      //分量的个数
      divisions: 100,
      //拖动改变事件回调
      onChanged: (double) {
        setState(() {
          value = double;
        });
      },
      onChangeStart: (val) {
        print("滑动开始回调");
      },
      onChangeEnd: (val) {
        print("滑动结束回调");
      },
    );
  }
}
