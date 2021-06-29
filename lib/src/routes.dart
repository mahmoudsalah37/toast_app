import 'package:flutter/material.dart';
import 'package:toast_app/modules/shopping_cart/pages/add_location_page.dart';

import '../modules/auth/pages/register_done_page.dart';
import '../modules/auth/pages/register_personal_info_page.dart';
import '../modules/auth/pages/register_step_three_page.dart';
import '../modules/auth/pages/register_verification_code_page.dart';
import '../modules/auth/pages/login_page.dart';
import '../modules/auth/pages/splash_page.dart';
import '../modules/home/pages/home_page.dart';
import '../modules/home/pages/menu_page.dart';
import '../modules/shopping_cart/pages/chat_page.dart';
import '../modules/shopping_cart/pages/drivers_offer_page.dart';
import '../modules/shopping_cart/pages/order_accepted_page.dart';
import '../modules/shopping_cart/pages/order_details_cart_page.dart';
import '../modules/shopping_cart/pages/order_location_details_page.dart';
import '../modules/shopping_cart/pages/place_order_page.dart';
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
      loginPage = '/loginPage',
      registerPersonalInfoPage = '/registerPersonalInfoPage',
      registerVerificationCodePage = '/registerVerificationCodePage',
      registerSelectFavoriteCategoryPage =
          '/registerSelectFavoriteCategoryPage',
      registerStepDonePage = '/registerStepDonePage',
      chatPage = '/chatPage',
      addLocationPage = '/addLocationPage';

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
      case loginPage:
        return MaterialPageRoute(builder: (context) => LoginPage());
      case registerPersonalInfoPage:
        return MaterialPageRoute(
            builder: (context) => RegisterPersonalInfoPage());
      case registerVerificationCodePage:
        return MaterialPageRoute(
            builder: (context) => RegisterVerificationCodePage());
      case registerSelectFavoriteCategoryPage:
        return MaterialPageRoute(
            builder: (context) => RegisterSelectFavorireCategoryPage());
      case registerStepDonePage:
        return MaterialPageRoute(builder: (context) => RegisterDonePage());
      case addLocationPage:
        return MaterialPageRoute(builder: (context) => AddLocationPage());
      default:
        return MaterialPageRoute(builder: (context) => SplashPage());
    }
  }
}
