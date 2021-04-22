import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   Table   表格组件
 */

class StudyTable extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Table',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Table 组件"),
        ),
        body: Center(
          child: Container(
            //表格
            child: Table(
              //所有列
              columnWidths: const {
                //列宽
                0: FixedColumnWidth(100),
                1: FixedColumnWidth(150),
                2: FixedColumnWidth(50),
              },
              border: TableBorder.all(
                  color: Colors.green, style: BorderStyle.solid),
              children: [
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey),
                    children: [
                      //控制大小
                      SizedBox(
                        height: 30,
                        child: Text(
                          "姓名",
                          style: TextStyle(),
                        ),
                      ),
                      Text("性别"),
                      Text("年龄"),
                    ]),
                TableRow(children: [
                  Text("张三"),
                  Text("男"),
                  Text("14"),
                ]),
                TableRow(children: [
                  Text("张三"),
                  Text("男"),
                  Text("14"),
                ]),
                TableRow(children: [
                  Text("张三"),
                  Text("男"),
                  Text("14"),
                ]),
                TableRow(children: [
                  Text("张三"),
                  Image.asset("assets/images/logo.png"),
                  Text("14"),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
