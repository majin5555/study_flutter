import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * @author: Majin
 * @date: 2021/4/25
 * @desc: DynamicTheme 主题变化
 */

class DynamicTheme extends StatefulWidget {
  //立即调用 createState 必须重写
  @override
  ThemeDemoState createState() => ThemeDemoState();
}

class ThemeDemoState extends State<DynamicTheme> {
  //默认模式
  Brightness _brightness = Brightness.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DynamicTheme',
      theme: ThemeData(brightness: _brightness),
      home: Scaffold(
        appBar: AppBar(
          title: Text("DynamicTheme"),
          leading: BackButton(
            color: Colors.red,
            onPressed: () {
              print("-----------BackButton");
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                  child: Text("主题切换"),
                  onPressed: () {
                    setState(() {
                      if (_brightness == Brightness.dark)
                        _brightness = Brightness.light;
                      else
                        _brightness = Brightness.dark;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
