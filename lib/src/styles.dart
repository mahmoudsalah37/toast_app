import 'package:flutter/material.dart';

class CustomStyle {
  static final InputDecoration kHomeSearchDecoration = InputDecoration(
    hintText: 'Search...',
    fillColor: Color(0xFFFFF3C2),
    filled: true,
    hintStyle: TextStyle(fontSize: 12),
    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
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
}
