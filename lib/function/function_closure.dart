//闭包是定义在方法内部的方法
void main() {
  var func = a();

  func();
  func();
  func();
  func();

  var c = a;
}

a() {
  int count = 0;

  // printCount() {
  //   print(count++);
  // }

  // return printCount;

  return () {
    print(count++);
  };
}
