import 'package:flutter/material.dart';
import 'package:toast_app/modules/home/pages/home_page.dart';
import 'package:toast_app/modules/home/pages/menu_page.dart';
import 'package:toast_app/modules/special_order/pages/new_special_order.dart';

class Routes {
  static const String homeRoute = '/homePage',
      menuRoute = '/menuPage',
      newSpecialOrder = '/newSpecialOrder';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (context) => HomePage());
      case menuRoute:
        return MaterialPageRoute(builder: (context) => MenuPage());
      case newSpecialOrder:
        return MaterialPageRoute(builder: (context) => NewSpecialOrderPage());
      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
