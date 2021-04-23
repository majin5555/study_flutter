import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/22
 * @desc:   GridView   网格组件
 */

class StudyGridView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study GridView',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("GridView 网格组件"),
          ),
          body: Center(
            child: DemoPage(),
          )),
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
    //  return _buildGridExtend();
    //  return _buildGridCount();
    //  return _buildGridSliver();
    return _buildGridCustom();
  }

  //根据长度计算
  Widget _buildGridExtend() {
    return GridView.extent(
      //横轴的最大长度
      maxCrossAxisExtent: 180,
      //内边距
      padding: EdgeInsets.all(10),
      //垂直间距
      mainAxisSpacing: 40.0,
      //水平间距
      crossAxisSpacing: 4.0,
      children: _buildGridTitleList(30),
    );
  }

  //创建指定列数的Grid
  Widget _buildGridCount() {
    return GridView.count(
      crossAxisCount: 3,
      //内边距
      padding: EdgeInsets.all(10),
      //垂直间距
      mainAxisSpacing: 4.0,
      //水平间距
      crossAxisSpacing: 4.0,
      children: _buildGridTitleList(30),
    );
  }

  //可懒加载的Grid
  Widget _buildGridSliver() {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            children: _buildGridTitleList(30),
          ),
        ),
      ],
    );
  }

  //自定义
  Widget _buildGridCustom() {
    return GridView.custom(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
      ),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          child: Column(
            children: [
              Image.asset("assets/images/logo.png"),
              Text("图片$index"),
            ],
          ),
        );
        ;
      }, childCount: 10),
    );
  }

  List<Container> _buildGridTitleList(int count) {
    return List.generate(
        count,
        (index) => Container(
              child: Image.asset("assets/images/logo.png"),
            ));
  }
}
