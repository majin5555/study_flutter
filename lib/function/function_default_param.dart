void main() {
  printPerson("张三");
  printPerson("张三", age: 20);
  printPerson("张三", age: 20);
  print("----------------------------------------");
}

///可选参数 根据命名 大括号 正常的参数需要在可选参数的前边
///默认参数 如果赋值 则使用，如果不赋值 则使用传递的参数
printPerson(String name, {int age = 30, String gender = "Female"}) {
  print("name=$name, age=$age ,gender=$gender");
}
