import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_navigation_container.dart';
import 'bottom_navigation_provider.dart';

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
        title: 'Flutter Demo',
        home: Scaffold(
          body: BottomNavigationContainer(),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
