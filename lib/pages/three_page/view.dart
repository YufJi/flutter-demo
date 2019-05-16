import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ThreeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: Text('fish-redux'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Text('fish-redux,' + state.name),
              onTap: () {
                Action action = ThreeActionCreator.onPlus('hello');
                dispatch(action);
              },
            ),
            Text('number is ${state.number.toString()}, age is ${state.age.toString()}')
          ],
        ),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
}
