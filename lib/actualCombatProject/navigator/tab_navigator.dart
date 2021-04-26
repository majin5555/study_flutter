import 'package:flutter/material.dart';
import 'package:flutter_app_hellow/actualCombatProject/pages/home_page.dart';
import 'package:flutter_app_hellow/actualCombatProject/pages/my_page.dart';
import 'package:flutter_app_hellow/actualCombatProject/pages/search_page.dart';
import 'package:flutter_app_hellow/actualCombatProject/pages/travel_page.dart';

/**
 * @author: Majin
 * @date: 2021/4/26
 * @desc: 顶部导航栏
 */

class TabNavicator extends StatefulWidget {
  @override
  _TabNavicatorState createState() => _TabNavicatorState();
}

class _TabNavicatorState extends State<TabNavicator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;

  //页面控制器
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterTrip"),
        leading: Icon(Icons.airplay_sharp),
      ),
      body: PageView(
        controller: _controller,
        children: [HomePage(), SearchPage(), TravelPage(), MyPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _defaultColor),
              activeIcon: Icon(Icons.home, color: _activeColor),
              title: Text(
                "首页",
                style: TextStyle(
                    color: _currentIndex != 0 ? _defaultColor : _activeColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: _defaultColor),
              activeIcon: Icon(Icons.search, color: _activeColor),
              title: Text(
                "搜索",
                style: TextStyle(
                    color: _currentIndex != 1 ? _defaultColor : _activeColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined, color: _defaultColor),
              activeIcon: Icon(Icons.camera_alt_outlined, color: _activeColor),
              title: Text(
                "旅拍",
                style: TextStyle(
                    color: _currentIndex != 2 ? _defaultColor : _activeColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: _defaultColor),
              activeIcon: Icon(Icons.account_circle, color: _activeColor),
              title: Text(
                "我的",
                style: TextStyle(
                    color: _currentIndex != 3 ? _defaultColor : _activeColor),
              )),
        ],
      ),
    );
  }
}
