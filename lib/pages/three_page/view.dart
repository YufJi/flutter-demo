import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'action.dart';
import 'state.dart';

import 'package:flutter_demo/components/tab.dart' as tabComponent;
import 'package:flutter_demo/application.dart';

const Color ThemeColor = Color(0x11233411);

Widget buildView(ThreeState state, Dispatch dispatch, ViewService viewService) {
  final descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

  // DefaultTextStyle.merge() allows you to create a default text
  // style that is inherited by its child and all subsequent children.
  final iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.kitchen, color: Colors.green[500]),
              Text('PREP:'),
              Text('25 min'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.timer, color: Colors.green[500]),
              Text('COOK:'),
              Text('1 hr'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant, color: Colors.green[500]),
              Text('FEEDS:'),
              Text('4-6'),
            ],
          ),
        ],
      ),
    ),
  );
 
  return Scaffold(
    backgroundColor: Color.fromRGBO(245, 245, 245, 1),
    appBar: AppBar(
      title: Text('旅游专线'),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            alignment: FractionalOffset(0, 0),
            children: <Widget>[
              CarouselSlider(
                viewportFraction: 1.0,
                aspectRatio: Application.size.aspectRatio,
                height: 180.0,
                items: [1,2,3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: Application.size.width,
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                        ),
                        child: Image.network(
                          'https://images3.c-ctrip.com/BUS/yueche/banner.jpg',
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 3.0,
                      offset: Offset(0, 2.0),
                    )
                  ],
                ),
                height: 300,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 140,
                ),
              ),
            ],
          ),
          Switch(
            value: true,
            onChanged: (newVal) {},
          ),
          iconList,
          Row(
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
          iconList,
        ],
      ),
    ),
    bottomNavigationBar: tabComponent.Tab(),
  );
}
