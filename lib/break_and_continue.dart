void main() {
  var list = [1, 2, 3];

  //break 终止所在的循环 continue  结束当前循环 继续下一次
  for (var value in list) {
    if (value == 2) {
      continue;
    }
    print(value);
  }
}
