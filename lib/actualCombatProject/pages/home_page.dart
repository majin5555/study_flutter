import 'package:flutter/material.dart';
import 'package:flutter_app_hellow/actualCombatProject/view/my_swiper.dart';

/**
 * @author: Majin
 * @date: 2021/4/26
 * @desc: 首页
 */

///滚动最大距离
const APPVBARSCROLOFFSET = 100;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///appBar 透明度默认值
  double appBarAlpha = 0;

  @override
  Widget build(BuildContext context) {
    /// 界面框架
    return Scaffold(

        /// 移除顶部Padding
        body: Stack(
      children: <Widget>[
        MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: NotificationListener(
              onNotification: (scrollNoticaction) {
                //滚动处理 (限定条件只是ListView的时候才做滚动监听)
                if (scrollNoticaction is ScrollUpdateNotification &&
                    scrollNoticaction.depth == 0) {
                  //滚动列表
                  _onScroll(scrollNoticaction.metrics.pixels);
                }
              },
              child: ListView(
                children: [
                  ///首页轮播
                  MySwiper(),
                  Container(
                    height: 800,
                    child: ListTile(
                      title: Text("哈哈"),
                    ),
                  )
                ],
              ),
            )),
        Opacity(
          opacity: appBarAlpha,
          child: Container(
            height: 80,
            decoration: BoxDecoration(color: Colors.white),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("首页"),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  ///列表滚动监听(appBar颜色渐变)
  void _onScroll(offset) {
    double alpha = offset / APPVBARSCROLOFFSET;

    ///滚动到头后向上滚动
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    } else {
      setState(() {
        appBarAlpha = alpha;
      });
      print(appBarAlpha);
    }
  }
}
