import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/special_order/pages/new_special_order_page.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/src/theme.dart';
import 'modules/home/provider/bottom_navigation_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        // initialRoute: Routes.newSpecialOrderPickStorePage,
        home: NewSpecialOrderPage(),
      ),
    );
  }
}
