import 'package:flutter/material.dart';
import 'package:toast_app/modules/home/pages/home_page.dart';
import 'package:toast_app/modules/home/pages/menu_page.dart';

class Routes {
  static const String homeRoute = '/homePage';
  static const String menuRoute = '/menuPage';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case menuRoute:
        return MaterialPageRoute(builder: (context) => MenuPage());
      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
