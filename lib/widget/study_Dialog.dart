import 'dart:ffi';

import 'package:flutter/material.dart';


/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc:   Dialog   组件
 */

class StudyDialog extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Dialog',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog 组件"),
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
  //打开AboutDialog
  void showAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => new AboutDialog(
              applicationName: "AndroidStudio",
              applicationIcon: Icon(Icons.apps),
              applicationVersion: "V3.1.2",
              applicationLegalese: "aaaaaaaaaaaaaaaaaa",
              children: [
                Text("这是AboutDialog"),
              ],
            ));
  }

  //打开 SimpleDialog
  void showSimpleDialog(BuildContext context) {
    showDialog<Null>(
        context: context,
        //构造器
        builder: (BuildContext context) => new SimpleDialog(
              title: Text("选择"),
              children: [
                SimpleDialogOption(
                  child: Text("选项1"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SimpleDialogOption(
                  child: Text("选项2"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
  }

  //打开AleartDialog
  void showAleartDialog(BuildContext context) {
    showDialog<Void>(
        context: context,
        builder: (BuildContext context) => new AlertDialog(
              title: Text("标题"),
              content: SingleChildScrollView(
                //内容可换其他控件
                child: ListBody(
                  children: [
                    Text("较长的List。。。"),
                    Text("较长的List。。。"),
                  ],
                ),
              ),
              actions: [
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("取消")),
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("确定")),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Dialog(
    //     child: Container(
    //       height: 200,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           Text("这是一个Dialog"),
    //           RaisedButton(
    //               child: Text("取消"),
    //               onPressed: () {
    //                 Navigator.of(context).pop();
    //               }),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    return Center(
      child: RaisedButton(
        child: Text("点击打开对话框"),
        onPressed: () {
          //showAboutDialog(context);
          // showSimpleDialog(context);
          showAleartDialog(context);
        },
      ),
    );
  }
}
