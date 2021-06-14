import 'package:flutter/material.dart';
import 'package:toast_app/modules/home/pages/home_page.dart';
import 'package:toast_app/modules/home/pages/menu_page.dart';
import 'package:toast_app/modules/shopping_cart/pages/cart_page.dart';
import 'package:toast_app/modules/shopping_cart/pages/drivers_offer_page.dart';
import 'package:toast_app/modules/special_order/pages/new_special_order_page.dart';
import 'package:toast_app/modules/special_order/pages/new_special_order_pick_store_location_page.dart';
import 'package:toast_app/modules/special_order/pages/new_special_order_pick_store_page.dart';

class Routes {
  static const String homePage = '/',
      menuPage = '/menuPage',
      newSpecialOrderapge = '/newSpecialOrder',
      newSpecialOrderPickStorePage = '/newSpecialOrderPickStore',
      newSpecialOrderPickStoreLocationPage =
          '/newSpecialOrderPickStoreLocationPage',
      driversOfferPage =
          '/driversOfferPage',
      cartPage = '/cartPage';

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
      case newSpecialOrderPickStoreLocationPage:
        return MaterialPageRoute(
            builder: (context) => NewSpecialOrderPickStoreLocationPage());
      case cartPage:
        return MaterialPageRoute(builder: (context) => CartPage());
      case  driversOfferPage:
        return MaterialPageRoute(builder: (context) => DriversOfferPage());
      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
