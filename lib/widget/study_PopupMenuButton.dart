import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   PopupMenuButton    弹出菜单按钮
 */

class StudyPopupMenuButton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study PopupMenuButton',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study PopupMenuButton"),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  void printSelectValue(String value) {
    print("value $value ");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text("弹出菜单按钮"),
        trailing: PopupMenuButton<String>(
          padding: EdgeInsets.all(10),
          onSelected: printSelectValue,
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
                value: "星期一",
                child: ListTile(
                  leading: Icon(Icons.lock),
                  title: Text("星期一"),
                )),
            PopupMenuDivider(),
            PopupMenuItem<String>(
                value: "星期二",
                child: ListTile(
                  leading: Icon(Icons.lock),
                  title: Text("星期二"),
                )),
            PopupMenuDivider(),
            PopupMenuItem<String>(
                value: "星期三",
                child: ListTile(
                  leading: Icon(Icons.lock),
                  title: Text("星期三"),
                )),
          ],
        ),
      ),
    );
  }
}
