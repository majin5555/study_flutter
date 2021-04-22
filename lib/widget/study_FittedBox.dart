import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/22
 * @desc:   FittedBox  填充容器
 */

class StudyFittedBox extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Study FittedBox',
        color: Colors.orange,
        home: Scaffold(
            appBar: AppBar(
              title: Text("AppBar FittedBox"),
            ),
            body: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: FittedBox(
                      //BoxFit.fill 可能会被拉伸
                      //BoxFit.contain  显示原始比例 不需要充满

                      fit: BoxFit.none,
                      alignment: Alignment.center,
                      // child: Container(
                      //   color: Colors.green,
                      //   child: Text(
                      //     "BoxFit.cover",
                      //     style: TextStyle(color: Colors.red),
                      //   ),
                      // ),
                      child: Image.asset("assets/images/logo.png"),
                    ),

                  ),
                ],
              ),
            )));
  }
}
