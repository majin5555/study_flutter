//逻辑运算符
void main() {
  bool isTrue = true;
  bool isFalse = false;
  //取反
  print(!isTrue);

  //并且
  print(isTrue && isFalse);

  print("#######################################################################");

  //或者
  print(isTrue || isFalse);

  String str = "";
  print(!str.isEmpty);
}
