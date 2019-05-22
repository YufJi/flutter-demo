import 'package:flutter/material.dart';

import 'package:flutter_demo/helpers/constants.dart';

class MyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: Container(
          color: Colors.transparent,
          height: 40.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(0, 0, 0, 0.45),
                  ),
                  child: Icon(
                    IconData(
                      0xe601,
                      fontFamily: FontFamily.IconFont,
                    ),
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(''),
                ),
                flex: 3,
              ),
              Expanded(
                child: Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}