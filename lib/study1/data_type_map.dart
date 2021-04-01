void main() {
  var map1 = {"first": "dart", 1: true};
  print(map1);

  print(map1["first"]);

  map1[1] = false;
  print(map1);

  //不可变的 map
  var map2 = const {1: "Dart", 2: "java"};
  print(map2);

  var map3 = new Map();

  var map4 = {"first": "Dart", "second": "java", "third": "python"};
  print(map4.length);
  print(map4.keys);
  print(map4.values);
  //是否包含某个key
  print(map4.containsKey("first"));
  //是否包含某个value
  print(map4.containsValue("Dart1"));

  map4.remove("third");
  print(map4);

  map4.forEach(f);

  var list = ["a", "b", "c"];
  //集合转map
  var map=list.asMap();
  print(map);
}

void f(String key, String value) {
  print("key=$key ，value =$value");
}
