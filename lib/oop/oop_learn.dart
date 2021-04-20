/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: 学习面向对象
 */

class Student extends Person {
  //定义类的变量
  String _school;
  String city;
  String country;
  String name;

  ///构造方法
  ///this._school 初始化自有参数
  ///name age 交给父类进行初始化
  ///city是可选参数
  ///country默认参数
  Student(this._school, String name, int age,
      {this.city, this.country = "China"})
      : super(name, age);

  String get school => _school;

  set school(String value) {
    _school = value;
  }
}

///定义Dart类 ，所有的类都集成Object
class Person {
  String name;
  int age;

  ///标准构造方法
  Person(this.name, this.age);

  @override
  String toString() {
    return 'name:$name , age: $age';
  }
}

class StudyFlutter extends Study {
  @override
  void study() {
    // TODO: implement study
  }
}

abstract class Study {
  void study();
}

/// mixins
///
class Test extends Person with Study {
  Test(String name, int age) : super(name, age);

  @override
  void study() {
    // TODO: implement study
  }
}
