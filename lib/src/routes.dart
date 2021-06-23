import 'package:flutter/material.dart';
import 'package:toast_app/modules/shopping_cart/pages/order_accepted_page.dart';
import 'package:toast_app/modules/shopping_cart/pages/order_location_details_page.dart';
import 'package:toast_app/modules/shopping_cart/pages/place_order_page.dart';
import 'package:toast_app/modules/splash_and_sign_up/pages/register_done_page.dart';
import 'package:toast_app/modules/splash_and_sign_up/pages/register_step_one_page.dart';
import 'package:toast_app/modules/splash_and_sign_up/pages/register_step_three_page.dart';
import 'package:toast_app/modules/splash_and_sign_up/pages/register_step_two_page.dart';
import 'package:toast_app/modules/splash_and_sign_up/pages/sign_in_page.dart';
import 'package:toast_app/modules/splash_and_sign_up/pages/splash_page.dart';
import '../modules/home/pages/home_page.dart';
import '../modules/home/pages/menu_page.dart';
import '../modules/shopping_cart/pages/order_details_cart_page.dart';
import '../modules/shopping_cart/pages/chat_page.dart';
import '../modules/shopping_cart/pages/drivers_offer_page.dart';
import '../modules/special_order/pages/new_special_order_page.dart';
import '../modules/special_order/pages/new_special_order_pick_store_location_page.dart';
import '../modules/special_order/pages/new_special_order_pick_store_page.dart';

class Routes {
  static const String homePage = '/homePage',
      menuPage = '/menuPage',
      newSpecialOrderapge = '/newSpecialOrder',
      newSpecialOrderPickStorePage = '/newSpecialOrderPickStore',
      newSpecialOrderPickStoreLocationPage =
          '/newSpecialOrderPickStoreLocationPage',
      driversOfferPage = '/driversOfferPage',
      orderDetailsCartPage = '/orderDetailsCartPage',
      orderLocationDetailsPage = '/orderLocationDetailsPage',
      placeOrderPage = '/placeOrderPage',
      orderAcceptedPage = '/orderAcceptedPage',
      splashPage = '/splashPage',
      signInPage = '/signInPage',
      registerStepOnePage = '/registerStepOnePage',
      registerStepTwoPage = '/registerStepTwoPage',
      registerStepThreePage = '/registerStepThreePage',
      registerStepDonePage = '/registerStepDonePage',
      chatPage = '/chatPage';

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
      case orderDetailsCartPage:
        return MaterialPageRoute(builder: (context) => OrderDetailsCartPage());
      case driversOfferPage:
        return MaterialPageRoute(builder: (context) => DriverOfferPage());
      case chatPage:
        return MaterialPageRoute(builder: (context) => ChatPage());
      case orderLocationDetailsPage:
        return MaterialPageRoute(
            builder: (context) => OrderLocationDetailsPage());
      case placeOrderPage:
        return MaterialPageRoute(builder: (context) => PlaceOrderPage());
      case orderAcceptedPage:
        return MaterialPageRoute(builder: (context) => OrderAcceptedPage());
      case splashPage:
        return MaterialPageRoute(builder: (context) => SplashPage());
      case signInPage:
        return MaterialPageRoute(builder: (context) => SignInPage());
      case registerStepOnePage:
        return MaterialPageRoute(builder: (context) => RegisterStepOnePage());
      case registerStepTwoPage:
        return MaterialPageRoute(builder: (context) => RegisterStepTwoPage());
      case registerStepThreePage:
        return MaterialPageRoute(builder: (context) => RegisterStepThreePage());
      case registerStepDonePage:
        return MaterialPageRoute(builder: (context) => RegisterDonePage());
      default:
        return MaterialPageRoute(builder: (context) => SplashPage());
    }
  }
}
