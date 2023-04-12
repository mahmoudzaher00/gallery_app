import 'package:flutter/material.dart';

import '../../features/login/presentation/view/login_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';



class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String homeRoute = "/home";


  appRoutes(context) {
    return {
      Routes.splashRoute: (context) => const SplashView(),
      Routes.loginRoute: (context) => const LoginView(),
      // Routes.otpRoute: (context) => const OtpView(),

    };
  }
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:return MaterialPageRoute(builder: (_) => const LoginView());
      default:return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('no route found'),
              ),
              body: const Center(child: Text('no route found')),
            ));
  }
}
