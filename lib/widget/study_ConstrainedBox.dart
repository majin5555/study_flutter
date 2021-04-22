import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/**
 * @author: Majin
 * @date: 2021/4/22
 * @desc:   ConstrainedBox  组件
 */

class StudyConstrainedBox extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Study ConstrainedBox',
        color: Colors.orange,
        home: Scaffold(
            appBar: AppBar(
              title: Text("AppBar ConstrainedBox"),
            ),
            body: Center(
                child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.orange,
                  width: 200,
                  height: 60,
                  child: Text(
                    "width>maxWith  height=maxheight",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                //天机一个指定宽高大小的盒子 ，限定最大最小的的宽高
                SizedBox(
                  height: 20,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 100,
                    minHeight: 20,
                    maxWidth: 200,
                    maxHeight: 60,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    width: 250,
                    height: 80,
                    child: Text(
                      "width>maxWith",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  width: 100,
                  height: 20,
                  child: Text(
                    "width=minWith  height=minHeight",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  width: 100,
                  height: 10,
                  child: Text(
                    "width>maxWith",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ))));
  }
}
