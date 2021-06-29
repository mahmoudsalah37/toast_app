import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 800), () {
      Navigator.pushReplacementNamed(context, Routes.loginPage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
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
