import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/home/pages/home_page.dart';
import 'modules/home/provider/bottom_navigation_provider.dart';
import 'modules/home/provider/categories_provider.dart';
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
