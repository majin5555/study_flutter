import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: DropDownMenuItem
 */

class StudyDropDownMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DropDownMenu学习',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar DropDownMenu学习"),
        ),
        body: Center(child: StudyDropDownMenuItem()),
      ),
    );
  }
}

var selectItemValue = "上海";

class StudyDropDownMenuItem extends StatelessWidget {
  List<DropdownMenuItem> generatemList() {
    final List<DropdownMenuItem> items = new List();
    final DropdownMenuItem item1 =
    new DropdownMenuItem(child: Text("北京"), value: "北京");
    final DropdownMenuItem item2 =
    new DropdownMenuItem(child: Text("上海"), value: "上海");
    final DropdownMenuItem item3 =
    new DropdownMenuItem(child: Text("广州"), value: "广州");
    final DropdownMenuItem item4 =
    new DropdownMenuItem(child: Text("深圳"), value: "深圳");

    items.add(item1);
    items.add(item2);
    items.add(item3);
    items.add(item4);
    return items;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      //hint 提示
        hint: Text("请选择一个城市"),
        //下拉列表数据
        items: generatemList(),
        value: selectItemValue,
        //下拉三角的图标
        iconSize: 48,
        style: TextStyle(color: Colors.green),
        //设置阴影高度
        elevation: 24,
        //将下拉框设置成为水平填充父级
        isExpanded: true,
        //改变事件
        onChanged: (T) {
          var obj =T;
       }
    );
  }
}
