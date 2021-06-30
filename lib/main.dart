import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/shopping_cart/provider/driver_socket_provider.dart';
import 'modules/home/provider/select_product_provider.dart';

import 'modules/auth/pages/splash_page.dart';
import 'modules/home/provider/bottom_navigation_provider.dart';
import 'modules/home/provider/categories_provider.dart';
import 'modules/shopping_cart/provider/cart_provider.dart';
import 'modules/shopping_cart/provider/locations_provider.dart';
import 'src/routes.dart';
import 'src/theme.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
        ChangeNotifierProvider(create: (_) => CategoriesProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => LocationsProvider()),
        ChangeNotifierProvider(create: (_) => SelectProductProvider()),
        ChangeNotifierProvider(create: (_) => DriverSocketProvider()),
      ],
      child: MaterialApp(
        theme: CustomsThemes.defaultThemeData,
        debugShowCheckedModeBanner: false,
        title: 'Toast',
        onGenerateRoute: Routes.generateRoute,
        home: SplashPage(),
      ),
    );
  }
}
