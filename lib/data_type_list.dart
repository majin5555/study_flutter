import 'dart:math';

void main() {
  var list1 = ["我的", 11, 2, 3, "dart", true];
  print(list1);
  print("获取list的第1个元素 ====》${list1[0]}");
  //修改元素
  list1[2] = "123456789";
  print(list1);

//不可变的数据
  var list2 = const [1, 2, 3];

  var list3 = new List();

  /// 常用的操作
  var list4 = ["123456", "789", "hfuwuifhweiuh", "eoioeieie"];
  print(list4.length);
  list4.add("qwer");
  list4.insert(1, "插入第一个");
  print(list4);
  list4.remove("插入第一个");
  print(list4);
  //list4.clear();
  //获取角标 找到的话返回元素所在的位置 找不到则返回-1
  print(list4.indexOf("789"));
  print(list4.sublist(1));
  //打乱shuffle
 // https://github.com/majin5555/study_flutter.git


  }
