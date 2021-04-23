import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc:   TabBar   选项卡组件
 */

class StudyTabBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar 组件',
      color: Colors.orange,
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoTabBarPage();
}

class DemoTabBarPage extends State<DemoPage>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    //长度要和展示部分的数量一致
    _tabController = new TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Scaffold(
        appBar: AppBar(
          title: Text("选项卡"),
          //前置图标
          leading: Icon(Icons.home),
          //背景色
          backgroundColor: Colors.orange,
          //选项卡
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: [
              Tab(
                text: "Tab1",
                icon: Icon(Icons.camera),
              ),
              Tab(
                text: "Tab2",
                icon: Icon(Icons.hail),
              ),
              Tab(
                text: "Tab3",
              ),
              Tab(
                text: "Tab4",
              ),
              Tab(
                text: "Tab5",
              ),
              Tab(
                text: "Tab6",
              ),
            ],
          ),
        ),
        //选项卡页面
        body: TabBarView(
          controller: _tabController,
          children: [
            Text("选项卡1"),
            Text("选项卡2"),
            Text("选项卡3"),
            Text("选项卡4"),
            Text("选项卡5"),
            Text("选项卡6"),
          ],
        ),
      ),
    );
  }
}
