import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<firstState> buildReducer() {
  return asReducer(
    <Object, Reducer<firstState>>{
      firstAction.increase: _onAction,
    },
  );
}

firstState _onAction(firstState state, Action action) {
  final firstState newState = state.clone();
  return newState;
}
