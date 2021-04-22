import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hellow/oop/generic_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   BottomNavigationBar   底部导航按钮
 */

class StudyBottomNavigationBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study BottomNavigationBar',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("BottomNavigationBar  底部导航按钮"),
        ),
        body: Container(),
        bottomNavigationBar: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageDemo();
}

class DemoPageDemo extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    // return BottomNavigationBar(
    //     //底部按钮类型  固定
    //     type: BottomNavigationBarType.fixed,
    //     fixedColor: Colors.red,
    //     iconSize: 24,
    //     onTap: _onItemTapped,
    //     //当前选项索引
    //     currentIndex: _currentIndex,
    //     items: <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(title: Text("聊天"), icon: Icon(Icons.chat)),
    //       BottomNavigationBarItem(title: Text("朋友"), icon: Icon(Icons.camera)),
    //       BottomNavigationBarItem(title: Text("我的"), icon: Icon(Icons.mic)),
    //     ]);

    return BottomNavigationBar(
        //底部按钮类型  移位
        type: BottomNavigationBarType.shifting,
        iconSize: 24,
        onTap: _onItemTapped,
        //当前选项索引
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: Text(
                "聊天",
                style: TextStyle(color: Colors.green),
              ),
              icon: Icon(Icons.chat, color: Colors.red)),
          BottomNavigationBarItem(
              title: Text(
                "朋友",
                style: TextStyle(color: Colors.green),
              ),
              icon: Icon(Icons.camera, color: Colors.red)),
          BottomNavigationBarItem(
              title: Text(
                "我的",
                style: TextStyle(color: Colors.green),
              ),
              icon: Icon(Icons.mic, color: Colors.red)),
        ]);
  }

  //当前索引
  int _currentIndex = 0;

  void _onItemTapped(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
