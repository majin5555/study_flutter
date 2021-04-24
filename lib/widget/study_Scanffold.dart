import 'dart:ffi';

import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc:   Scaffold   组件
 */

class StudyScaffold extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Scaffold',
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "标题",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 10.0,
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.add),
        ],
        //是整个AppBar的bottom
        bottom: PreferredSize(
          child: Container(
            height: 50.0,
            child: Center(
              child: Text(
                "显示在标题下边的内容",
                style: TextStyle(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(color: Colors.purple),
          ),
          preferredSize: Size.fromHeight(50.0),
        ),
      ),
      body: Center(
        child: Text(
          "文本",
          style: TextStyle(fontSize: 50),
        ),
      ),
      //侧边栏抽屉组件
      drawer: Drawer(
        child: Container(
            width: 150,
            color: Colors.deepPurple,
            child: Center(
              child: Text(
                "侧边栏",
                style: TextStyle(fontSize: 50),
              ),
            )),
      ),
      persistentFooterButtons: [
        Icon(Icons.print),
        Icon(Icons.print),
      ],

      //底部导航按钮
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        fixedColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text("主页"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("聊天"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("工作台"),
            icon: Icon(Icons.home),
          ),
        ],
      ),
      //FAB 悬浮按钮
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return FloatingActionButton(
              backgroundColor: Colors.red,
              child: Icon(Icons.camera),
              onPressed: () {
                var snackbar = new SnackBar(
                  content: Text("显示snackbar"),
                  backgroundColor: Colors.blue,
                  duration: Duration(milliseconds: 500),
                  action: SnackBarAction(
                    label: "撤销",
                    onPressed: () {},
                  ),
                );
                Scaffold.of(context).showSnackBar(snackbar);
              });
        },
      ),
    );
  }
}
