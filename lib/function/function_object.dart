void main() {
  var func = printHello();

  var list = [1, 2, 3, 4, 5, 6];

  list.forEach((element) {});
  var list2 = ["h", "e", "l", "l", "o"];

  print(listTimes(list2, times));

}

///方法赋值给对象
void printHello() {
  print("Hello");
}

List listTimes(List list, String times(str)) {
  for (var value = 0; value < list.length; value++) {
    list[value] = times(list[value]);
  }
  return list;
}

String times(str) {
  return str * 3;
}
