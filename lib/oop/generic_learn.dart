/**
 * @author: Majin
 * @date: 2021/4/20
 * @desc: 泛型学习
 */

void main() {
  TestGeneric testGeneric = new TestGeneric();
  testGeneric.start();
}

class TestGeneric {
  void start() {
    Cache<String> cache1 = new Cache();
    cache1.setItem("cache1", "cache11");
    String string1 = cache1.getItem("cache1");
    print(string1);

    Cache<int> cache2 = new Cache();
    cache2.setItem("cache1", 1008);
    int int1 = cache2.getItem("cache1");
    print(int1);
  }
}

/// 泛型
class Cache<T> {
  static final Map<String, Object> _cached = new Map();

  void setItem(String key, T value) {
    _cached[key] = value;
  }

  getItem(String key) {
    return _cached[key];
  }
}
