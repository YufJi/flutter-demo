import 'package:fish_redux/fish_redux.dart';

class ThreeState implements Cloneable<ThreeState> {

  @override
  ThreeState clone() {
    return ThreeState();
  }
}

ThreeState initState(Map<String, dynamic> args) {
  return ThreeState();
}
