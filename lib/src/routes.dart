import 'package:flutter/material.dart';
import 'package:toast_app/modules/home/pages/home_page.dart';
import 'package:toast_app/modules/home/pages/menu_page.dart';
import 'package:toast_app/modules/special_order/pages/new_special_order_page.dart';
import 'package:toast_app/modules/special_order/pages/new_special_order_pick_store_page.dart';

class Routes {
  static const String homePage = '/',
      menuPage = '/menuPage',
      newSpecialOrderapge = '/newSpecialOrder',
      newSpecialOrderPickStorePage = '/newSpecialOrderPickStore';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => HomePage());

      case menuPage:
        return MaterialPageRoute(builder: (context) => MenuPage());
      case newSpecialOrderapge:
        return MaterialPageRoute(builder: (context) => NewSpecialOrderPage());
      case newSpecialOrderPickStorePage:
        return MaterialPageRoute(
            builder: (context) => NewSpecialOrderPickStorePage());
      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
