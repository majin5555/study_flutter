/**
 * @author: Majin
 * @date: 2021/4/15
 * @desc: 初始化列表
 */
void main() {
  // const person = Person("小明", 1, "aaa");
  // person.work();
}

class Person {
  String name;
  int age;
  final String gender;

  Person(this.name, this.age, this.gender);

  //初始化列表
  Person.withMap(Map map) : gender = map["gender"] {
    this.name = map["name"];
    this.age = map["age"];
  }
}
