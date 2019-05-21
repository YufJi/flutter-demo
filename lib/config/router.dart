import 'package:flutter/material.dart';

import 'package:flutter_demo/config/route_handlers.dart';

import 'package:fluro/fluro.dart';

class Routes {
  static String root = "/";
  static String demoSimple = "/other";
  static String three = "/three";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print("ROUTE WAS NOT FOUND !!!");
      },
    );
    router.define(root, handler: rootHandler);
    router.define(demoSimple, handler: demoRouteHandler);
    router.define(three, handler: threeRouteHandler);
  }
}
