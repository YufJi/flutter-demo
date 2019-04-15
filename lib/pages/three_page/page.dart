import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ThreePage extends Page<ThreeState, Map<String, dynamic>> {
  ThreePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ThreeState>(
                adapter: null,
                slots: <String, Dependent<ThreeState>>{
                }),
            middleware: <Middleware<ThreeState>>[
            ],);

}
