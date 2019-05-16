import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ThreeState> buildEffect() {
  return combineEffects(<Object, Effect<ThreeState>>{
    ThreeAction.plus: _onPlus,
  });
}

void _onPlus(Action action, Context<ThreeState> ctx) {

  ctx.dispatch(ThreeActionCreator.onPlusReducer(action.payload));
}
