import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   IndexStack  索引层叠组件  只显示一个 根据索引显示
 */

class StudyIndexStack extends StatelessWidget {
  final int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study IndexStack',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar IndexStack 组件"),
          ),
          body: IndexedStack(
            index: currentIndex,
            children: <Widget>[
              //圆形头像
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                ),
                child: Text(
                  "IndexedStack",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              Icon(
                Icons.lock,
                size: 48,
                color: Colors.red,
              ),
            ],
          )),
    );
  }
}
