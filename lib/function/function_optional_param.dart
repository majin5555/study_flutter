void main() {
  printPerson("张三");
  printPerson("张三", age: 20);
  printPerson("张三", age: 20, gender: "Male");
  print("----------------------------------------");
  printPerson2("张三");
  printPerson2("张三", 20);
  printPerson2("张三", 20, "Male");
}

///可选参数 根据命名 大括号 正常的参数需要在可选参数的前边
printPerson(String name, {int age, String gender}) {
  print("name=$name, age=$age ,gender=$gender");
}

///可选参数 根据位置 中括号
printPerson2(String name, [int age, String gender]) {
  print("name=$name, age=$age ,gender=$gender");
}
