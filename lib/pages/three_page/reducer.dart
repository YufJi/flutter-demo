import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ThreeState> buildReducer() {
  return asReducer(
    <Object, Reducer<ThreeState>>{
      ThreeAction.plusReducer: _onPlusReducer,
    },
  );
}

ThreeState _onPlusReducer(ThreeState state, Action action) {
  final ThreeState newState = state.clone();
  newState.name = action.payload;
  return newState;
}
