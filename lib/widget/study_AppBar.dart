import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/22
 * @desc:   AppBar   组件
 */

class StudyAppBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study AppBar',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("应用"),
            actions: [
              IconButton(
                  icon: Icon(Icons.print),
                  onPressed: () {
                    print("dayin");
                  }),
              IconButton(
                  icon: Icon(Icons.print),
                  onPressed: () {
                    print("dayin");
                  }),
              IconButton(
                  icon: Icon(Icons.print),
                  onPressed: () {
                    print("dayin");
                  }),
            ],
          ),
          body: Center(child: DemoPage())),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoAppBarPage();
}

class DemoAppBarPage extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: 100,
    //   child: AppBar(
    //     title: Text("应用"),
    //     actions: [
    //       IconButton(
    //           icon: Icon(Icons.print),
    //           onPressed: () {
    //             print("dayin");
    //           }),
    //       IconButton(
    //           icon: Icon(Icons.print),
    //           onPressed: () {
    //             print("dayin");
    //           }),
    //       IconButton(
    //           icon: Icon(Icons.print),
    //           onPressed: () {
    //             print("dayin");
    //           }),
    //     ],
    //   ),
    // );

    return SizedBox(
      height: 500,
      child: AppBar(
        title: Text("标题 "),
        leading: Icon(Icons.home),
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.print),
              onPressed: () {
                print("dayin");
              }),
          IconButton(
              icon: Icon(Icons.print),
              onPressed: () {
                print("dayin");
              }),
          //菜单按钮
          PopupMenuButton<String>(
              itemBuilder: (BuildContext contect) => <PopupMenuItem<String>>[
                    PopupMenuItem<String>(
                        value: "friend", child: Text("分享到朋友圈")),
                    PopupMenuItem<String>(value: "down", child: Text("下载到本地")),
                  ]),
        ],
      ),
    );
  }
}
