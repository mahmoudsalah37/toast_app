import 'package:flutter/material.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/routes.dart';

class RegisterAppBar extends StatelessWidget {
  final bool? haveSkipButton;
  final Function? onTapSkip;

  const RegisterAppBar({
    this.haveSkipButton,
    this.onTapSkip,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: CustomColors.greyLightColor,
      shadowColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: CustomColors.blueLightColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        Visibility(
          visible: haveSkipButton ?? false,
          child: TextButton(
            onPressed: () => onTapSkip!(),
            child: Text(
              'Skip',
              style: theme.textTheme.headline5!.copyWith(
                color: CustomColors.blueLightColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
