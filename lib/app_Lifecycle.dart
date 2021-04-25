import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/25
 * @desc: 应用的生命周期
 */

class AppLifeCycle extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study WidgetLifecycle',
      home: Scaffold(
        appBar: AppBar(
          title: Text("应用的生命周期"),
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
  WidgetLifeCycleState createState() {
    print("-------- WidgetLifecycleDemo createState() ");
    return new WidgetLifeCycleState();
  }
}

class WidgetLifeCycleState extends State<WidgetLifecycleDemo>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    print("-------- WidgetLifeCycleState initState() ");
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  ///重点
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("state---------------- $state ");
    switch (state) {
      case AppLifecycleState.paused:
        print("App 进入后台");
        break;
      case AppLifecycleState.resumed:
        print("App 进入前台");
        break;
      case AppLifecycleState.inactive: //不常用 比如来了电话
        print("App 应用程序当前对用户不可见，不响应用户输入，并在后台运行。当应用程序处于这种状态时，引擎将不  ///会调用Window.onBeginFrame和Window.onDrawFrame回调。");
        break;
      case AppLifecycleState.detached:
        print("App 应用程序仍然驻留在Flutter引擎上，但是与任何主机视图分离。");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    print("--------WidgetLifeCycleState build() ");
    return Center(
      child: Column(
        children: [Text("Flutter App 生命周期")],
      ),
    );
  }
}
