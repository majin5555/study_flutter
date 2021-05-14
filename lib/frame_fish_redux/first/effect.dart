import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<firstState> buildEffect() {
  return combineEffects(<Object, Effect<firstState>>{
    firstAction.increase: _onIncrease,
  });
}

///自增数
void _onIncrease(Action action, Context<firstState> ctx) {
  ///处理自增数逻辑
  int count = ctx.state.count + 1;
  ctx.dispatch(firstActionCreator.updateCount(count));
}
