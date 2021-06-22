import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 600), () {
      Navigator.pushReplacementNamed(context, Routes.signInPage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/images/bottom_navigation/toast_icon.svg',
          height: res.getHeight(30),
        ),
      ),
    );
  }
}
