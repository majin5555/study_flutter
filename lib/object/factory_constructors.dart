/**
 * @author: Majin
 * @date: 2021/4/15
 * @desc: 工厂构造方法
 */
class Logger {
  final String name;

  static final Map<String, Logger> _cache = <String, Logger>{};

  // factory Logger(String) {
  //   return Logger._internal("dart");
  // }

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

//私有构造方法  工厂构造方法不能有返回值
  Logger._internal(this.name);

  void log(String msg) {
    print(msg);
  }
}
