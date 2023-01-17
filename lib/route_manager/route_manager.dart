import 'package:flutter/material.dart';
import 'package:flutter_application1/screens/first_screen.dart';
import 'package:flutter_application1/screens/getPhoneNumber.dart';
import 'package:flutter_application1/screens/second_screen.dart';
import 'package:flutter_application1/screens/set_phoneNumber.dart';
import 'package:flutter_application1/screens/third_screen.dart';

class Routes {
  static const String firstScreen = "/";
  static const String secondScreen = "/loginOptions";
  static const String thirdScreen = "/loginPage";
  static const String setPhoneNumber = "/setPhoneNumber";
  static const String dialNumber = "/dialNumber";
}

class RouteGenerator {
  static Route<dynamic> getRoute(
    RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case Routes.firstScreen:
        return MaterialPageRoute(builder: (_) => const FirstScreen());
      case Routes.secondScreen:
        return MaterialPageRoute(builder: (_) => const SecondScreen());
      case Routes.thirdScreen:
        return MaterialPageRoute(builder: (_) => const ThirdScreen());
      case Routes.setPhoneNumber:
        return MaterialPageRoute(builder: (_) => const SetPhoneNumber());
      case Routes.dialNumber:
        return MaterialPageRoute(builder: (_) => const DialNumber());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No Route Found"),
              ),
              body: const Center(child: Text("No Route Found")),
            ));
  }
}
