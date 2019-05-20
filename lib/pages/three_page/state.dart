import 'package:fish_redux/fish_redux.dart';

ThreeState initState(Map<String, dynamic> args) {
  final state = new ThreeState(0);
  return state;
}

class ThreeState implements Cloneable<ThreeState> {
  int number;
  ThreeState(this.number);
  @override
  ThreeState clone() {
    return new ThreeState(this.number);
  }
}
