import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc:   GridTitle   网格组件
 */

class StudyGridTitle extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study GridTitle',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("GridTitle 网格标题组件"),
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
    return Center(
      child: Container(
        color: Colors.white,
        height: 400,
        child: GridView.count(
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(10),
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            GridTile(
              header: Text("grid title"),
              child: Image.asset("assets/images/logo.png"),
              footer: Text("grid footer"),
            ),
            GridTile(
              header: GridTileBar(
                title: Text(
                  "header",
                  style: TextStyle(color: Colors.purple),
                ),
                subtitle: Text(
                  "子标题",
                  style: TextStyle(color: Colors.blue, fontSize: 9),
                ),
                leading: Icon(Icons.camera, color: Colors.pink),
              ),
              child: Image.asset(
                "assets/images/knowledge.png",
                fit: BoxFit.cover,
              ),
            ),
            Image.asset("assets/images/logo.png"),
            //添加网格效果
            GridPaper(
              color: Colors.blue,
              child: Image.asset("assets/images/logo.png"),
            ),
          ],
        ),
      ),
    );
  }
}
