void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  for (var index = 0; index < list.length; index++) {
    print(list[index]);
  }
  print("_________________________________________________");

  for (var value in list) {
    print(value);
  }
}
