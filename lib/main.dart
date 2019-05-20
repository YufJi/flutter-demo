import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_demo/config/router.dart';
import 'package:flutter_demo/application.dart';
import 'package:flutter_demo/helpers/constants.dart';

import 'package:fluro/fluro.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Color(AppColors.themeColor),
      statusBarColor: Color(AppColors.themeColor), 
    )
  );
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State createState() {
    return new AppState();
  }
}

class AppState extends State<App> {
  AppState() {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
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
    return app;
  }
}
