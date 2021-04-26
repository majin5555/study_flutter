import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MySwiper extends Container {
  List<String> _imagesUrls = [
    "https://img-blog.csdnimg.cn/20210401205234582.png",
    "https://img-blog.csdnimg.cn/20210401205307863.png",
    "https://img-blog.csdnimg.cn/20210401205249606.png",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.aiimg.com%2Fuploads%2Fuserup%2F0909%2F2Z64022L38.jpg&refer=http%3A%2F%2Fimg.aiimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1622034495&t=dbbc7d9ca2800011c5993691489cf41d"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      /// 设置 Banner 轮播图 160 像素
      height: 200,
      /// 这是 flutter_swiper 插件的轮播图
      child: Swiper(
        /// 轮播图数量
        itemCount: _imagesUrls.length,

        /// 设置轮播图自动播放
        autoplay: true,

        /// 轮播条目组件
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print("第$index个");
            },
            child: Image.network(
              /// 图片 URL 链接
              _imagesUrls[index],

              /// 缩放方式
              fit: BoxFit.fill,
            ),
          );
        },
        /// 轮播图指示器
        pagination: SwiperPagination(),
      ),
    );
  }
}
