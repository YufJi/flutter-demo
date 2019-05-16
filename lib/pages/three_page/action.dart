import 'package:fish_redux/fish_redux.dart';

enum ThreeAction { plus, plusReducer }

class ThreeActionCreator {

  static Action onPlus(payload) {
    return Action(
      ThreeAction.plus,
      payload: payload,
    );
  }

  static Action onPlusReducer(payload) {
    return Action(
      ThreeAction.plusReducer,
      payload: payload,
    );
  }
}
