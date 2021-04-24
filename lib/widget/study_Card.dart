import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/22
 * @desc:   Card   列表组件
 */

class StudyCard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Card',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Card 卡片组件"),
          ),
          body: Center(
            child: DemoPage(),
          )),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoCardPage();
}

class DemoCardPage extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.green,
        //卡片的Z坐标 阴影的大小
        elevation: 10,
        margin: EdgeInsets.all(20),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//卡片的具体内容
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ListTile(
              leading: Icon(Icons.print),
              title: Text(
                "这是一台打印机",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              subtitle: Text("配置是...",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              contentPadding: EdgeInsets.all(20),
            ),
            FlatButton(
              child: Text("FlatButton"),
              color: Colors.transparent,
              textColor: Colors.black,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            FlatButton(
              child: Text("FlatButton"),
              color: Colors.transparent,
              textColor: Colors.black,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}
