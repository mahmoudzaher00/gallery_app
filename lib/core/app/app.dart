

import 'package:flutter/material.dart';

import '../resources/routes_manager.dart';
import '../resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  // named constructor
  const MyApp._internal();

  static const MyApp _instance = MyApp._internal(); // singleton or single instance

  factory MyApp() => _instance; // factory

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Gallery App',
        debugShowCheckedModeBanner: false,
        routes: Routes().appRoutes(context),
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
        theme: getApplicationTheme(),
      );
  }


}
