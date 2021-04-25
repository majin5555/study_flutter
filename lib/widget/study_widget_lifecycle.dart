import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * @author: Majin
 * @date: 2021/4/25
 * @desc: Flutter页面生命周期
 */

class WidgetLifecycle extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study WidgetLifecycle',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study WidgetLifecycle"),
          leading: BackButton(
            color: Colors.red,
            onPressed: () {
              print("-----------BackButton");
            },
          ),
        ),
        body: WidgetLifecycleDemo(),
      ),
    );
  }
}

class WidgetLifecycleDemo extends StatefulWidget {
  //立即调用 createState 必须重写
  @override
  State createState() {
    print("--------createState() ");
    return new WidgetLifeCycleState();
  }
}

class WidgetLifeCycleState extends State<WidgetLifecycleDemo> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print("--------initState() ");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("--------didChangeDependencies() ");
  }

  //夫组件重绘 调用
  @override
  void didUpdateWidget(WidgetLifecycleDemo oldWidget) {
    print("--------didUpdateWidget() ");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("--------build() ");
    return Center(
      child: Column(
        children: [
          Text("_coun:$count"),
          RaisedButton(
              child: Text("点我"),
              onPressed: () {
                //setState 后会重新嗲用build
                setState(() {
                  count++;
                });
              }),
        ],
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print("--------deactivate() ");
  }

  @override
  void dispose() {
    print("--------dispose() ");
    super.dispose();
  }
}
