import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_hellow/oop/oop_learn.dart';

/**
 * @author: Majin
 * @date: 2021/4/23
 * @desc:   DatePicker    时间日前选择
 */

class StudyDatePicker extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study DatePicker',
      color: Colors.orange,
      home: Scaffold(
          appBar: AppBar(
            title: Text("DatePicker 时间日前选择组件"),
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
  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future<void> _select(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2019, 1, 11),
        lastDate: DateTime(2029, 1, 11));

    if (picked != null && picked != _date)
      print("当前的选择日期是：${_date.toString()}");

    setState(() {
      _date = picked;
    });

    if (picked == null) _date = new DateTime.now();
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );

    if (picked != null && picked != _time)
      print("当前的选择日期是：${_time.toString()}");

    setState(() {
      _time = picked;
    });

    if (picked == null) _time = new TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("日期选择"),
      RaisedButton(
          child: Text("日期选择结果${_date.toString()}"),
          onPressed: () {
            _select(context);
          }),
      Text("时间选择"),
      RaisedButton(
          child: Text("时间选择结果${_time.toString()}"),
          onPressed: () {
            _selectTime(context);
          }),
    ]);
  }
}
