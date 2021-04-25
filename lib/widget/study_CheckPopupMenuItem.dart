import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   CheckPopupMenuItem    弹出菜单按钮
 */

class StudyCheckPopupMenuItem extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study CheckPopupMenuItem',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("CheckPopupMenuItem 组件"),
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
  List<String> _checkValues;
  final String _checkValue1 = "One";
  final String _checkValue2 = "Two";
  final String _checkValue3 = "Three";
  final String _checkValue4 = "Four";

  @override
  void initState() {
    super.initState();
    _checkValues = <String>[_checkValue2];
  }

  bool isCheck(String value) => _checkValues.contains(value);

  void showCheckedMenuSelecttions(String value) {
    if (_checkValues.contains(value)) {
      _checkValues.remove(value);
    } else {
      _checkValues.add(value);
    }

    showInSnackBar("Checked $_checkValues");
  }

  void showInSnackBar(String value) {
    Fluttertoast.showToast(
        msg: value,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.green,
        textColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("有选择标记的弹出菜单"),
      trailing: PopupMenuButton<String>(
        padding: EdgeInsets.zero,
        //弹出按钮图标
        icon: Icon(Icons.home),
        onSelected: showCheckedMenuSelecttions,
        itemBuilder: (BuildContext context) =>
        <PopupMenuItem<String>>[
          //有选择标记的弹出菜单项
          CheckedPopupMenuItem<String>(
            value: _checkValue1,
            checked: isCheck(_checkValue1),
            child: Text("_checkValue1 $_checkValue1"),
          ),
          CheckedPopupMenuItem<String>(
            value: _checkValue2,
            //当前项是否可点击
            enabled: false,
            checked: isCheck(_checkValue2),
            child: Text("_checkValue2 $_checkValue2"),
          ),
          CheckedPopupMenuItem<String>(
            value: _checkValue3,
            checked: isCheck(_checkValue3),
            child: Text("_checkValue3 $_checkValue3"),
          ),
          CheckedPopupMenuItem<String>(
            value: _checkValue4,
            checked: isCheck(_checkValue4),
            child: Text("_checkValue4 $_checkValue4"),
          ),
        ],
      ),
    );
  }
}
