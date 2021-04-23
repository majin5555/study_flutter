import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc:   BottomAppBar   组件
 */

class StudyBottomAppBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar 组件',
      color: Colors.orange,
      home: Scaffold(
        //FAb按钮位置
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        //FAb按钮
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        //底部应用兰
        bottomNavigationBar: BottomAppBar(
          //floatingActionButton 和 BottomAppBar 之间的距离
          notchMargin: 10,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.print), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
