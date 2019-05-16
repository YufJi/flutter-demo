import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'package:fluro/fluro.dart';

import 'package:flutter_demo/config/router.dart';
import 'package:flutter_demo/application.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State createState() {
    return new AppState();
  }
}

class AppState extends State<App> {
  static const platform = const MethodChannel('samples.flutter.io/battery');

  AppState() {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  void initState() {
    super.initState();
    _getBatteryLevel();
  }

  Future _getBatteryLevel() async {
    var batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
    print('this is batteryLevel: $batteryLevel');
  }

  @override
  Widget build(BuildContext context) {
    final app = new MaterialApp(
      title: 'Fluro',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    );
    print("initial route = ${app.initialRoute}");
    return app;
  }
}