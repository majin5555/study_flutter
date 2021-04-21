import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   FloatingActionButton
 */

class StudyFloatingActionButton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study FloatingActionButton',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study FloatingActionButton"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.red,
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: const Icon(Icons.person),
                tooltip: "这只一个自定义的按钮",
                heroTag: null,
                //未点击时候阴影
                elevation: 8.0,
                highlightElevation: 16,
                mini: false,
                // shape: Border.all(width: 2.0,color: Colors.white,
                // style: BorderStyle.solid),

                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 2.0,
                      color: Colors.white,
                      style: BorderStyle.solid),
                  //外边框弧度
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              FloatingActionButton.extended(
                  onPressed: () {}, icon: Icon(Icons.ac_unit), label: Text("这是一个拓展按钮")),
            ],
          ),
        ),
      ),
    );
  }
}
