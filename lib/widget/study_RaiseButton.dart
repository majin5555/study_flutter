import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc:   RaiseButton  按钮组件
 */

class StudyRaiseButton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study RaiseButton',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study RaiseButton"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text(
              "点击登录按钮",
              style: TextStyle(fontSize: 36.0),
            ),
            color: Colors.green,
            //背景
            colorBrightness: Brightness.dark,
            disabledColor: Colors.grey,
            //失效时候的颜色
            disabledTextColor: Colors.grey,
            //失效时候的文本颜色
            textColor: Colors.orange,
            textTheme: ButtonTextTheme.normal,
            splashColor: Colors.blue,
            clipBehavior: Clip.antiAlias,
            //内边距
            padding: new EdgeInsets.only(
                bottom: 5.0, left: 20, right: 20.0, top: 5.0),
            // shape: Border.all(
            //     width: 2.0, color: Colors.red, style: BorderStyle.solid),
            shape: RoundedRectangleBorder(
                side: new BorderSide(
                  width: 2.0,
                  color: Colors.blue,
                  style: BorderStyle.solid,
                ),
                //圆角
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10))),
            onPressed: () {
              print("点击 RaiseButton");
            },
          ),
        ),
      ),
    );
  }
}
