import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   OutlineButton  外边框按钮组件
 */

class StudyOutlineButton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study OutlineButton',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study OutlineButton"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              OutlineButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.ac_unit, size: 28,color: Colors.red,),
                  label: Text("图标按钮", style: TextStyle(fontSize: 28,color: Colors.pink))),
              OutlineButton(
                child: Text(
                  "OutlineButton 组件",
                  style: TextStyle(fontSize: 28),
                ),
                onPressed: () {
                  print("onPressed  OutlineButton ");
                },
                borderSide: BorderSide(color: Colors.orange, width: 2.0),
                color: Colors.orange,
                disabledBorderColor: Colors.red,
                highlightedBorderColor: Colors.black,
                disabledTextColor: Colors.grey,
                textColor: Colors.green,
                textTheme: ButtonTextTheme.normal,
                splashColor: Colors.blue,
                clipBehavior: Clip.antiAlias,
                padding: new EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
