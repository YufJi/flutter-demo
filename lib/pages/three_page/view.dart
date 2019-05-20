import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

const Color ThemeColor = Color(0x11233411);

Widget buildView(ThreeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: Text('fish-redux'),
        backgroundColor: ThemeColor,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Icon(Icons.remove),
              onTap: () => dispatch(ThreeActionCreator.onRemove()),
            ),
            Text(state.number.toString()),
            GestureDetector(
              child: Icon(Icons.add),
              onTap: () => dispatch(ThreeActionCreator.onPlus()),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: ThemeColor,
        child: SafeArea(
          child: Container(
            height: 65.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.language),
                Icon(Icons.extension),
                Icon(Icons.favorite),
                Icon(Icons.import_contacts),
              ],
            )
          ),
        ),
      )
    );
}
