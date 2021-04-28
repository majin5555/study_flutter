/**
 * @author: Majin
 * @date: 2021/4/27
 * @desc:
 */

import 'package:flutter/material.dart';
import 'package:flutter_app_hellow/be_update_entity.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


/**
 * @author: Majin
 * @date: 2021/4/27
 * @desc: 学习网络请求
 */

void main() {
  runApp(StudyHttp());
}

class StudyHttp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Study Http',
        color: Colors.orange,
        home: Scaffold(
            appBar: AppBar(
              title: Text("AppBar Http  "),
            ),
            body: DemoPage()));
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageDemo();
}

class DemoPageDemo extends State<DemoPage> {
  String showResult = "";

  Future<BeUpdateEntity> fetchPost() async {
    final url = Uri.parse('http://mobile.dev.weilaios.com/plant/v1/appVersion');
    var response = await http.get(url);
    print(json.decode(response.body));
    return BeUpdateEntity.fromMap(json.decode(response.body));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(showResult),
          RaisedButton(
              child: Text("点我"),
              onPressed: () {
                fetchPost().then((BeUpdateEntity value) {
                  setState(() {
                    showResult =value.data.wgt.wgtUrl;

                    print(" wgtUrl $showResult");
                  });
                });
              }),
        ],
      ),
    );
  }
}
