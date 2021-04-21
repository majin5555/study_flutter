import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   SliderTheme   自定义主题滑块
 */

class StudySliderTheme extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study SliderTheme',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar SliderTheme"),
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
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.blue,
          inactiveTrackColor: Colors.red,
          //提示气泡背景
          valueIndicatorColor: Colors.green,
          //气泡文本颜色
          valueIndicatorTextStyle: TextStyle(color: Colors.deepPurple),
          //滑块中心颜色
          thumbColor: Colors.black,
          //滑块边缘颜色
          overlayColor: Colors.purple,
          inactiveTickMarkColor: Colors.white),
      child: Slider(
        value: value,
        label: "$value",
        min: 0,
        max: 100,
        //分量的个数
        divisions: 100,
        onChanged: (val) {
          setState(() {
            value = val.floorToDouble();
          });
        },
      ),
    );
  }
}
