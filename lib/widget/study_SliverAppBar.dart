import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/**
 * @author: Majin
 * @date: 2021/4/22
 * @desc:   SliverAppBar   组件
 */

class StudySliverAppBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study SliverAppBar',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("SliverAppBar 组件"),
          ),
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  //标题前边显示的一个控件
                  leading: Icon(Icons.home),
                  //右侧加图标
                  actions: [
                    Icon(Icons.print),
                    Icon(Icons.print),
                    Icon(Icons.print),
                  ],
                  //设置阴影值
                  elevation: 10,
                  expandedHeight: 200,
                  pinned: true,
                  //是否固定在顶部
                  snap: false,
                  floating: false,
                  //是否随着滑动隐藏标题
                  //是否随着滑动隐藏标题
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      "这是一个很酷的标题",
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    //折叠背景
                    background: Image.network("https://img01.sogoucdn.com/v2/thumb/crop/xy/ai/x/0/y/0/w/120/h/80/iw/90/ih/60/t/0/ir/3?t=2&appid=200997&url=https%3A%2F%2Fpic1.zhimg.com%2Fv2-086e34df924b7708aa6fcad87c608479_r.jpg%3Fsource%3D12a79843&referer=https%3A%2F%2Fwww.zhihu.com%2Fzvideo%2F1219281432675287040&sign=700bc2408fe7680fd2059c843595ed08c",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ];
            },
            body: Center(
              child: Text("拖动试试"),
            ),
          )),
    );
  }
}
