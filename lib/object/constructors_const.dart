/**
 * @author: Majin
 * @date: 2021/4/15
 * @desc: 常量构造方法
 */
void main() {
  const person = Person("小明", 1, "aaa");
  person.work();
}

class Person {
  final String name;
  final int age;
  final String gender;

  const Person(this.name, this.age, this.gender);

  //与上边相同
  // Person(this.name, this.age);

  void work() {
    print("Work ");
  }
}
