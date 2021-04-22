import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   Padding   组件
 */

class StudyPadding extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Padding',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Padding"),
        ),
        body: Container(
          width: 300,
          height: 300,
          color: Colors.grey,
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
