import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../src/colors.dart';

class HelperMethods {
  static showToast({
    required String msg,
    ToastGravity gravity = ToastGravity.BOTTOM,
    Toast toastLength = Toast.LENGTH_SHORT,
    double fontSize = 16,
  }) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: toastLength,
      gravity: gravity,
      fontSize: fontSize,
      backgroundColor: Colors.orangeAccent,
      textColor: CustomColors.black,
    );
  }
}
