void main() {
  String str = "1233";
  String str1 = ''' 123
   456 多行字符串''';

  print(str1);

  String str3 = 'Hello \nDart';

  print(str3);

  String str4 = "Hello world 123 456 789";
  print(str4 + " new ");
  print(str4 * 5);
  print(str4 == str3); //判断是否相等
  print(str4 [6]);
  //插值表达式 ${}
  print(str4.length);
  print(str4.isEmpty);
  print(str4.isNotEmpty);
  var str5 = str4.split(" ");
  print(str5);
  var str6 = str4.replaceAll("Hello", "你好");
  print(str6);
}
