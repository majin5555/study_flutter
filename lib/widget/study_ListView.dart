import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/22
 * @desc:   ListView   列表组件
 */

class StudyListView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study ListView',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("ListView 列表组件"),
          ),
          body: Center(
            child: DemoPage(),
          )),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoListViewPage();
}

class DemoListViewPage extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    //基本用法
    // return ListView(
    //   children: [
    //     ListTile(
    //       leading: Icon(Icons.person),
    //       title: Text("A"),
    //     ),
    //     Divider(
    //       height: 10,
    //       color: Colors.blueGrey,
    //     ),
    //     Text("这是一条数据"),
    //     ListTile(
    //       leading: Icon(Icons.person),
    //       title: Text("B"),
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.person),
    //       title: Text("C"),
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.person),
    //       title: Text("D"),
    //     ),
    //   ],
    // );

    // return SizedBox(
    //   child: ListView.builder(
    //     scrollDirection: Axis.vertical,
    //     itemCount: 100,
    //     physics: BouncingScrollPhysics(),
    //     // cacheExtent: 30,//预加载区域
    //     //primary: false,
    //     //true的时候滑动监听不可用
    //     //    shrinkWrap: false,
    //     //  itemExtent: 50.0, //确定每个item的高度,
    //     itemBuilder: (BuildContext context, int index) {
    //       return ListTile(
    //         title: Text("title $index"),
    //         leading: Icon(Icons.print),
    //         //前置图标
    //         subtitle: Text("子标题 $index"),
    //         //子标题
    //         trailing: Icon(Icons.ac_unit),
    //         //后置图标
    //         isThreeLine: false,
    //         contentPadding: EdgeInsets.all(10.0),
    //         enabled: true,
    //         onTap: () {},
    //         onLongPress: () {},
    //         selected: false,
    //       );
    //     },
    //   ),
    // );

    // return SizedBox(
    //   child: ListView.separated(
    //     scrollDirection: Axis.vertical,
    //     itemCount: 100,
    //     //带分割线的构造器
    //     separatorBuilder: (BuildContext context, int index) => Divider(
    //       height: 1.0,
    //       color: Colors.red,
    //     ),
    //     itemBuilder: (BuildContext context, int index) {
    //       return ListTile(
    //         title: Text("title $index"),
    //         leading: Icon(Icons.print),
    //         //前置图标
    //         subtitle: Text("子标题 $index"),
    //         //子标题
    //         trailing: Icon(Icons.ac_unit),
    //         //后置图标
    //         isThreeLine: false,
    //         contentPadding: EdgeInsets.all(10.0),
    //         enabled: true,
    //         onTap: () {},
    //         onLongPress: () {},
    //         selected: false,
    //       );
    //     },
    //   ),
    // );

    return SizedBox(
      // height: 300.0,
      //自定义列表
      child: ListView.custom(
          scrollDirection: Axis.vertical,
          childrenDelegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            //自定义容器
            return Container(
              height: 50,
              alignment: Alignment.topCenter,
              color: Colors.lightBlue[100 * (index % 9)],
              child: Text("item $index"),
            );
          }, childCount: 100)),
    );
  }
}
