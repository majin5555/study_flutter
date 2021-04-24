import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/**
 * @author: Majin
 * @date: 2021/4/22
 * @desc:   FlexiableSpaceBar   可折叠组件
 */

class StudyFlexiableSpaceBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Study FlexiableSpaceBar',
        color: Colors.orange,
        home: Scaffold(
            appBar: AppBar(
              title: Text("FlexiableSpaceBar 可折叠组件"),
            ),
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  //应用兰
                  SliverAppBar(
                    //展开高度
                    expandedHeight: 150,
                    //是否随着滑动隐藏标题
                    floating: false,
                    //是否固定在顶部
                    pinned: true,
                    //可折叠应用兰
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text(
                        "可折叠的组件",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      background: Image.network(
                        "https://img0.baidu.com/it/u=1043662563,3219538677&fm=26&fmt=auto&gp=0.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ];
              },
              body: Center(
                child: Text("向上提拉"),
              ),
            )));
  }
}
