import 'package:flutter/services.dart';

import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ThreeState> buildEffect() {
  return combineEffects(<Object, Effect<ThreeState>>{
    ThreeAction.plus: _onPlus,
    ThreeAction.remove: _onRemove,
  });
}

void _onPlus(Action action, Context<ThreeState> ctx) {
  _getVolume();
  ctx.dispatch(ThreeActionCreator.setplus());
}

void _onRemove(Action action, Context<ThreeState> ctx) {
  ctx.dispatch(ThreeActionCreator.setRemove());
}

const MethodChannel methodChannel = MethodChannel('samples.flutter.io/volume');

Future<void> _getVolume() async {
  String volume;
  try {
    final int result = await methodChannel.invokeMethod('getVolume');
    volume = 'volume level: $result.';
  } on PlatformException {
    volume = 'Failed to get volume level.';
  }
  print(volume);
}
