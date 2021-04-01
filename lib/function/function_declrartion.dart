void main(List args) {
  print(args);
  print(getPerson1("张三", 20));

  printPerson("张三", 20);
  //无返回类型 则返回 null
  print(printPerson("张三", 20));
}

String getPerson(String name, int age) {
  return "name=$name ,age=$age";
}

int gender = 0;

///箭头语法 返回
getPerson1(String name, int age) =>
    gender == 1 ? "name=$name ,age=$age" : "Test";

/// 返回值 类型可以省略  void  参数的类型也可以省略 String int
printPerson(name, age) {
  print("name=$name ,age=$age");
}
