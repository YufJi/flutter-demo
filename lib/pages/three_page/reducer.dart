import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ThreeState> buildReducer() {
  return asReducer(
    <Object, Reducer<ThreeState>>{
      ThreeAction.setPlus: _setPlus,
      ThreeAction.setRemove: _setRemove,
    },
  );
}

ThreeState _setPlus(ThreeState state, Action action) {
  final ThreeState newState = state.clone();
  newState.number+=1;
  return newState;
}

ThreeState _setRemove(ThreeState state, Action action) {
  final ThreeState newState = state.clone();
  newState.number-=1;
  return newState;
}
