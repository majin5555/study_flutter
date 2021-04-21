import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc:   TextFiled  按钮组件
 */

class StudyTextFiled extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study TextFiled',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Study TextFiled"),
        ),
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController userNameControl = new TextEditingController();
  TextEditingController passWordControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // TextField(
        //   //每个单词的首字母大写
        //   //textCapitalization: TextCapitalization.words,
        //   textCapitalization: TextCapitalization.characters,
        //   //键盘类型
        //   keyboardType: TextInputType.emailAddress,
        //   decoration: InputDecoration(
        //     //内容的内边距
        //       contentPadding: EdgeInsets.all(10.0),
        //       icon: Icon(Icons.ac_unit),
        //       //提示文本
        //       labelText: "请输入你的用户名",
        //       helperText: "请输入注册的用户名"),
        //   //设置贯标样式
        //   cursorColor: Colors.green,
        //   cursorRadius: Radius.circular(10),
        //   textInputAction: TextInputAction.go,
        // ),
        TextField(
          controller: userNameControl,
          //外边框样式
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "请输入得你的用户名",
              labelText: "用户名",
              prefixIcon: Icon(Icons.person),
              suffixIcon: Icon(Icons.person)),
        ),
        TextField(
          controller: passWordControl,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "请输入你的密码",
            labelText: "密码",
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.lock),
          ),
          obscureText: true,
        ),

        RaisedButton(
          onPressed: () {
            loginCheck();
            print("登录---------");
          },
          child: Text("登录"),
        ),
      ],
    );
  }

  ///检测登录
  void loginCheck() {
    if (userNameControl.text.length != 11) {
      print("请输入正确的手机号");
    }

    if(passWordControl.text.length< 6){

    }
  }
}
