import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action, Page;

import 'first/page.dart';

/**
 * @author: Majin
 * @date: 2021/5/14
 * @desc: app入口
 */

Widget createApp() {
  ///
  final AbstractRoutes routes = PageRoutes(pages: {
    'first_page': firstPage(),
  });

  ///MaterialApp 风格
  return MaterialApp(
    title: '咸鱼',

    ///显示右上角的的debug标志
    debugShowCheckedModeBanner: false,

    ///主题颜色
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),

    ///初始化页面
    home: routes.buildPage('first_page', null),

    ///给特定路由传递参数并使用onGenerateRoute()
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
