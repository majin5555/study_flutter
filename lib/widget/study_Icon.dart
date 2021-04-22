import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   Icon   图标组件
 */

class StudyIcon extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Icon',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Icon 图标组件"),
        ),
        body: DemoPage(),
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
    return Column(
      children: [
        Icon(
          Icons.favorite,
          color: Colors.red,
          size: 100,
        ),
        ImageIcon(
          AssetImage('assets/images/logo.png'),
          size: 200,
        ),
        IconButton(icon: Icon(Icons.camera), onPressed: (){


        })
      ],
    );
  }
}
