import 'package:flutter/material.dart';
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
}
