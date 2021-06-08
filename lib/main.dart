import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'modules/home/provider/bottom_navigation_provider.dart';
import 'modules/home/pages/home_page.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Toast',
        home: HomePage(),
      ),
    );
  }
}
