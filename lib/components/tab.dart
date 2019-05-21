import 'package:flutter/material.dart';
import 'package:flutter_demo/helpers/constants.dart';

const Color ThemeColor = Color(0x11233411);

class Tabobj {
  String text;
  int icon;
  Tabobj({this.text, this.icon});
}

List<Tabobj> tabs = [
  new Tabobj(
    text: '订单',
    icon: 0xe64b,
  ),
  new Tabobj(
    text: '在线咨询',
    icon: 0xe64c,
  ),
  new Tabobj(
    text: '商务合作',
    icon: 0xe64a,
  ),
];

class Tab extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Container(
          height: 65.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: buildTabs(tabs),
          )
        ),
      ),
    );
  }
}

List<Expanded> buildTabs(List<Tabobj> tabs) {
  return tabs.map((Tabobj data) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Icon(
            IconData(
              data.icon,
              fontFamily: FontFamily.IconFont,
            ),
            color: Colors.blueGrey,
          ),
          Text(
            data.text,
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }).toList();
}
