void main() {
  num a = 10;
  a = 33.5;

  int b = 20;

  double c = 10.5;

  print(b + c);
  print(b - c);
  print(b * c);
  print(b / c);
  print(b ~/ c);
  print(b % c);

  print(0.0 / 0.0);

  print(b.isEven); //判断 偶数
  print(b.isOdd); //判断 奇数

  int e = -100;
  print("绝对值 :  ${e.abs()} ");

  double f = 10.5;
  print("f 的值是 ${f}");
  print("f 四舍五入 ${f.round()}");
  print("不大于 f 的最大整数 ${f.floor()}");
  print("不小于 f 的最小整数 ${f.ceil()}");
  print("转int   ${f.toInt()}");
  print("转doublr   ${f.toDouble()}");
}
