import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_svg/svg.dart';

import 'colors.dart';

class CustomStyle {
  static final InputDecoration homeSearchInputDecoration = InputDecoration(
    hintText: 'Search...',
    fillColor: CustomColors.yellowLightColor,
    filled: true,
    hintStyle: TextStyle(fontSize: 12),
    contentPadding: EdgeInsets.all(10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
  );

  static final InputDecoration registerInputDecoration = InputDecoration(
    fillColor: Colors.white,
    hintText: 'email',
    labelStyle: TextStyle(color: CustomColors.blueLightColor),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: CustomColors.blueLightColor, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: CustomColors.blueLightColor, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
  );

  static final BoxDecoration containerShadowDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 5,
        offset: Offset(0, 4),
      ),
    ],
  );

  static final DefaultChatTheme chatTheme = DefaultChatTheme(
    backgroundColor: CustomColors.greyLightColor,
    primaryColor: CustomColors.yellowDeepColor,
    secondaryColor: CustomColors.yellowLightColor,
    inputBackgroundColor: CustomColors.yellowDeepColor,
    inputTextColor: Colors.black,
    sendButtonIcon: SvgPicture.asset(
      'assets/images/shopping_cart/send_chat_icon.svg',
    ),
  );
}
