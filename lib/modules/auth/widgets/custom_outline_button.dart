import 'package:flutter/material.dart';

import '../../../src/colors.dart';
import '../../../utils/classes/resposive.dart';

class RegisterOutlineButton extends StatelessWidget {
  final double? height, width;
  final String title;
  final Function onPressed;
  final Color? textColor, backgroundColor;

  const RegisterOutlineButton({
    this.height,
    this.width,
    required this.title,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return OutlinedButton(
      onPressed: () => onPressed(),
      child: Text(
        title,
        style: theme.textTheme.headline2!.copyWith(
          color: textColor ?? CustomColors.blueLightColor,
        ),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.white,
        side: BorderSide(color: CustomColors.blueLightColor),
        padding: EdgeInsets.symmetric(
            horizontal: width ?? 40, vertical: height ?? 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
