import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ThreeAction { plus, setPlus, remove, setRemove }

class ThreeActionCreator {
  static Action onPlus() {
    return const Action(ThreeAction.plus);
  }
  static Action setplus() {
    return const Action(ThreeAction.setPlus);
  }
  static Action onRemove() {
    return const Action(ThreeAction.remove);
  }
  static Action setRemove() {
    return const Action(ThreeAction.setRemove);
  }
}
