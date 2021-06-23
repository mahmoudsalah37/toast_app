import 'package:flutter/material.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class CustomSignInButton extends StatelessWidget {
  final Widget child;
  final Function onTap;

  const CustomSignInButton({
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: res.getWidth(45),
        decoration: CustomStyle.containerShadowDecoration.copyWith(
          boxShadow: [
            BoxShadow(
              color: CustomColors.blueColor,
              offset: Offset(-2, 2),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: child,
        ),
      ),
    );
  }
}
