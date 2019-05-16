import 'package:fish_redux/fish_redux.dart';

ThreeState initState(Map<String, dynamic> args) {
  return ThreeState(
    number: 13,
    age: 25,
    name: 'jyf',
  );
}


class ThreeState implements Cloneable<ThreeState> {
  var number;
  var age;
  String name;

  ThreeState({this.number, this.age, this.name});

  @override
  ThreeState clone() {
    return ThreeState(
      number: this.number,
      age: this.age,
      name: this.name,
    );
  }
}