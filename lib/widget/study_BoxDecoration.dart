import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/22
 * @desc:   BoxDecoration  组件
 */

class StudyBoxDecoration extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Study BoxDecoration',
        color: Colors.orange,
        home: Scaffold(
            appBar: AppBar(
              title: Text("AppBar BoxDecoration"),
            ),
            body: Center(
              child: Container(
                width: 300,
                height: 300,
                //添加装饰
                child: DecoratedBox(
                  //装饰定位   background  背景模式  foreground 前景模式
                  position: DecorationPosition.background,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: ExactAssetImage("assets/images/knowledge.png"),
                      ),
                      //边框弧度
                      //  borderRadius: BorderRadius.circular(150),
                      border: Border.all(
                          color: Colors.blue,
                          //边框粗细
                          width: 6),
                      //边框样式
                      shape: BoxShape.circle),
                  child: Text(
                    "定位演示 ",
                    style: TextStyle(fontSize: 28, color: Colors.green),
                  ),
                ),
              ),
            )));
  }
}
