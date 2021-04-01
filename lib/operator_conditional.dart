void main() {
  int gender = 1;
  //三目运算符 条件成立 则取前边值  条件不成立 则取后边值
  String str = gender == 0 ? "Malie=$gender" : "Female=$gender";

  print(str);

  String a;
  String b = "Java";
  //左边为空个的话 就会使用右边的值 左边不为空 则使用左边的值
  String c = a ?? b;
  print(c);
}
