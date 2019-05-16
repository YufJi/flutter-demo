
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/other_page.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_demo/pages/three_page/page.dart';

var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new MyHomePage(
    title: 'home page',
  );
});

var demoRouteHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {

  return new OtherPage();
});


var threeRouteHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new ThreePage().buildPage(null);
  }
);
