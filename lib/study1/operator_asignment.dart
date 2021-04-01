//赋值运算符
void main() {
  int a = 10;
  int b = 5;

  b ??= 10;

  ///表示 左边的数字为空 则 右边赋值给左边  如果左边不为空 则右边赋值无效
  print(b);

  a += 2;

  print("a的值是 ${a}");

  a -= b;
  print("a的值是 ${a}");

  a *= b;
  //a /= b;
  a ~/= b;
  a %= b;
}
