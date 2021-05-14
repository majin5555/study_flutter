import 'package:fish_redux/fish_redux.dart';

/// state:这个就是我们的数据层，页面需要的变量都写在state层
class firstState implements Cloneable<firstState> {
  int count;

  @override
  firstState clone() {
    return firstState()..count = count;
  }
}

firstState initState(Map<String, dynamic> args) {
  return firstState();
}
