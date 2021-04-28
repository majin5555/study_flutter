import 'package:flutter/material.dart';
import 'actualCombatProject/navigator/tab_navigator.dart';


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

