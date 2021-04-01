void main() {
  String language = "Java";

  switch (language) {
    case "Dart":
      print("Dart is my favorate");
      break;
    case "Java":
      print("Java is my favorate");
      break;
    case "Python":
      print("Python is my favorate");
      break;
    default:
      print("Java is my favorate");
  }

  //定义 标签  continue D 跳转标签执行语句
  switch (language) {
    D:
    case "Dart":
      print("Dart is my favorate");
      break;
    case "Java":
      print("Java is my favorate");
      continue D;
    case "Python":
      print("Python is my favorate");
      break;
    default:
      print("Java is my favorate");
  }
}
