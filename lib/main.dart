import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/home/pages/menu_page.dart';
import 'package:toast_app/modules/social/pages/chat_page.dart';
import 'package:toast_app/modules/special_order/pages/new_special_order_pick_store_location_page.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/src/theme.dart';
import 'modules/home/provider/bottom_navigation_provider.dart';
import 'modules/home/pages/home_page.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //hello edits
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
      ],
      child: MaterialApp(
        theme: CustomsThemes.defaultThemeData,
        debugShowCheckedModeBanner: false,
        title: 'Toast',
        onGenerateRoute: Routes.generateRoute,
        home: HomePage(),
      ),
    );
  }
}
