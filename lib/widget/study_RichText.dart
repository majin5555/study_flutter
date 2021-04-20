import 'package:flutter/material.dart';

/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: 学习richText 富文本组件
 */

class StudyRichText extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '富文本组件',
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar RichText学习"),
        ),
        body: Center(
            child: RichText(
              text: TextSpan(text: "I",
                  style: TextStyle(fontSize: 30,color: Colors.deepPurpleAccent), children: <TextSpan>[
                    TextSpan(
                        text: " want",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                            color: Colors.red)),
                    TextSpan(
                        text: " study",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.green))
                    , TextSpan(
                        text: " Flutter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.orange))
                  ]),
            )),
      ),
    );
  }
}
