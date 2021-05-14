import 'package:flutter/material.dart';
import 'actualCombatProject/navigator/tab_navigator.dart';
import 'frame_fish_redux/app.dart';

void main() {
  //runApp(AppTrip());

  runApp(createApp());
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
