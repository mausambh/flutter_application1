import 'package:flutter/material.dart';
import 'package:flutter_application1/ListView/list_view_builder.dart';
import 'package:flutter_application1/counter_using_getx/counter_ui.dart';
import 'package:flutter_application1/screens/first_screen.dart';
import 'package:flutter_application1/screens/getPhoneNumber.dart';
import 'package:flutter_application1/screens/second_screen.dart';
import 'package:flutter_application1/screens/third_screen.dart';


class Routes {
  static const String firstScreen = "/";
  static const String secondScreen = "/loginOptions";
  static const String thirdScreen = "/loginPage";
  static const String setPhoneNumber = "/detailsPage";
  static const String dialNumber = "/dialNumber";
  static const String counterWithGetx = "/counterWithGetx";
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
        return MaterialPageRoute(builder: (_) => ListViewBuilderClass());
      case Routes.dialNumber:
        return MaterialPageRoute(builder: (_) => const DialNumber());
      case Routes.counterWithGetx:
        return MaterialPageRoute(builder: (_) => CounterUi());
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
