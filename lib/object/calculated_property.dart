/**
 *计算属性
 */
void main() {
  var rect = new Rectangle();
  rect.height = 20;
  rect.width = 30;

  print(rect.area);
  rect.area = 200;
  print(rect.width);
}

class Rectangle {
  num width, height;

  // num area() {
  //   return width * height;
  // }

  // 计算属性 1
  // num get area {
  //   return width * height;
  // }
  // 计算属性 2
  num get area => width * height;

  set area(value) {
    width = value / 20; //假设高度为20
  }
}
