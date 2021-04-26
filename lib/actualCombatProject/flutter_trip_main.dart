import 'package:flutter/material.dart';

import 'navigator/tab_navigator.dart';

/**
 * @author: Majin
 * @date: 2021/4/26
 * @desc: flutter之旅
 */

void main() {
  runApp(AppTrip());
}

class AppTrip extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterTrip ',
      home: TabNavicator(),
    );
  }
}
