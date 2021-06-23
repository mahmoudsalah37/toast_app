import 'package:flutter/material.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class CustomCartYellowButton extends StatelessWidget {
  final Function onTap;
  final String title;

  const CustomCartYellowButton({
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return SizedBox(
      width: res.getWidth(100),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: CustomColors.yellowDeepColor,
            textStyle: theme.textTheme.headline6,
            padding: EdgeInsets.all(0)),
        onPressed: () => onTap(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(title),
        ),
      ),
    );
  }
}
