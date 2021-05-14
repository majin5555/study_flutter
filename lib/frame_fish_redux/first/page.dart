import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class firstPage extends Page<firstState, Map<String, dynamic>> {
  firstPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<firstState>(
                adapter: null,
                slots: <String, Dependent<firstState>>{
                }),
            middleware: <Middleware<firstState>>[
            ],);

}
