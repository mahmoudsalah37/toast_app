import 'package:flutter/material.dart';

AppBar buildAppBarSpecialOrderWidget(BuildContext context, String text) {
  final theme = Theme.of(context);
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios, color: Colors.blue),
      onPressed: () => Navigator.of(context).pop(),
    ),
    title: Text(
      text,
      style: theme.textTheme.headline2,
    ),
    centerTitle: true,
    foregroundColor: Colors.blue,
  );
}
