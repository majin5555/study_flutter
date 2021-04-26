import 'package:flutter/material.dart';

void main() => runApp(MaterialAppDemo());

class MaterialAppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      //  home: DemoPage(),
      theme: ThemeData(primaryColor: Colors.red),
      color: Colors.green,
      initialRoute: "/first",
      routes: <String, WidgetBuilder>{
        "/first": (BuildContext context) => FirstScreen(),
        "/second": (BuildContext context) => SecondScreen(),
      },
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: true,
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: 100,
      height: 50,
      child: Text(
        "Align",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}
