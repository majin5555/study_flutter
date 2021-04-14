///匿名方法
void main() {
  //1
  var func = (str) {
    print("匿名方法=----$str");
  };

  func("匿名方法 传入的参数");

  //2 匿名方法可以是一个参数
  var list2 = ["h", "e", "l", "l", "o"];

  var result = listTimes(list2, (str) {
    return str * 3;
  });
  print("匿名方法=----$result");

  var result1 = listTimes(list2, (str) {
    return str * 3;
  });
  print("匿名方法=----$result1");
}

List listTimes(List list, String times(str)) {
  for (var value = 0; value < list.length; value++) {
    list[value] = times(list[value]);
  }
  return list;
}

List listTimes2(List list, String times(str)) {
  for (var value = 0; value < list.length; value++) {
    list[value] = times(list[value]);
  }
  return list;
}
