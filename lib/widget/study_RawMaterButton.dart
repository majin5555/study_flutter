import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc:   RawMaterButton  按钮组件
 */

class StudyRawMaterButton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study RawMaterButton.',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study RawMaterButton."),
        ),
        body: RawMaterialButton(
          onPressed: () {},
          textStyle: TextStyle(fontSize: 20,color: Colors.blue),
          child: Text("RawMaterButton"),
          highlightColor: Colors.red,
          splashColor: Colors.blue,
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.all(10),
          highlightElevation: 10.0,
        ),
      ),
    );
  }
}
