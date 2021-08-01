import 'package:flutter/material.dart';

import '../../../src/colors.dart';

class RegisterOutlineButton extends StatelessWidget {
  final double height, width, horizontalPadding, verticalPadding;
  final String title;
  final Function onPressed;
  final Color textColor, backgroundColor;

  const RegisterOutlineButton({
    this.height = 10,
    this.width = 40,
    required this.title,
    required this.onPressed,
    this.textColor = CustomColors.blueLightColor,
    this.backgroundColor = Colors.white,
    this.horizontalPadding = 0,
    this.verticalPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      child: OutlinedButton(
        onPressed: () => onPressed(),
        child: Text(
          title,
          style: theme.textTheme.headline2!.copyWith(
            color: textColor,
          ),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(color: CustomColors.blueLightColor),
          padding: EdgeInsets.symmetric(horizontal: width, vertical: height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
