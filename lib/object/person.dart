class Person {
  String _name; //前边加下划线 代表私有性
  String name;
  int age;

  //不可变的
  final String address = "北京";

  void work() {
    print("Name is $name ,Age is $age ,He is working...");
  }
}
//dart 中 方法不能被重载
// void work(){
//
// }
