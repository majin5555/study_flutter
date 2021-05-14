import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum firstAction { increase, updateCount }

class firstActionCreator {
  static Action onAction() {
    return const Action(firstAction.increase);
  }

  ///去reducer层更新数据，传参可以放在Action类中的payload字段中，payload是dynamic类型，可传任何类型
  static Action updateCount(int count) {
    return Action(firstAction.updateCount, payload: count);
  }
}
