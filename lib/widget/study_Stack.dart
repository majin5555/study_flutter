import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   Stack   层级组件
 */

class StudyStack extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Stack',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar Stack"),
          ),
          body: Column(
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                color: Colors.red,
                padding: EdgeInsets.all(10),
                //层叠组件
                child: Stack(
                  //对其方式
                  alignment: Alignment.center,
                  //子组件的取值
                  fit: StackFit.loose,
                  //超出范围 剪切
                  overflow: Overflow.clip,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 100,
                      height: 50,
                    ),
                    Text(
                      "Stack组件",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5.0,
                          color: Colors.orange),
                    ),
                    //定位方式
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: Text(
                        "A",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
