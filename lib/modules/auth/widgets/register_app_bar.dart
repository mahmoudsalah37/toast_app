import 'package:flutter/material.dart';

import '../../../src/colors.dart';

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
    return SafeArea(
      child: AppBar(
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
      ),
    );
  }
}
