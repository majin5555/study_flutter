/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc:面向对象的编程技巧
 */

/// 一 封装 集成 多态
/// 二 点点点的技巧 万物皆对象 1点看有哪些方法和属性 2点看源码 3点弹究竟
void main() {
  List list;

  /// 1.安全调用
  /// 防止空异常抛出 打印null
  print(list?.length);

  /// 2.设置默认值
  print(list?.length ?? -1);

  /// 3.设置默认值
  list = [];
  list.add(0);
  list.add(" ");
  list.add(null);

  if (list[0] == null || list[0] == "" || list[0] == 0) {
    print("list[0] is empty----a");
  }

  if ([null, "", 0].contains(list[0])) {
    print("list[0] is empty----b");
  }
}
