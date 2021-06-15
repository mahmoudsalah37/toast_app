import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/modules/home/models/categories_model.dart';
import 'package:toast_app/modules/home/models/category_model.dart';
import 'package:toast_app/modules/home/pages/menu_page.dart';
import 'package:toast_app/modules/social/pages/chat_page.dart';
import 'package:toast_app/modules/special_order/pages/new_special_order_pick_store_location_page.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/src/theme.dart';
import 'modules/home/provider/bottom_navigation_provider.dart';
import 'modules/home/pages/home_page.dart';
import 'modules/home/services/default_service.dart';

Future<void> main() async {
  final v = await DefaultService.getData(3);

  final x = CategoriesModel.fromJson(v.data);
  print(x.toString());
  // runApp(MyApp());
}

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
        home: HomePage(),
      ),
    );
  }
}
