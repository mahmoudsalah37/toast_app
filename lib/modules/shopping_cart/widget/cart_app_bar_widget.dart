import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';
import 'package:toast_app/utils/classes/resposive.dart';
import 'package:toast_app/widgets/custom_stepper_dots.dart';

import 'clear_cart_items_dialog.dart';

class CustomCartAppBar extends StatelessWidget {
  final String title;
  final int indicatorIndex;

  const CustomCartAppBar({
    required this.title,
    required this.indicatorIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: CustomStyle.containerShadowDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: CustomColors.yellowDeepColor,
            ),
          ),
          Column(
            children: [
              Text(title),
              SizedBox(height: 4),
              CustomStepperDots(indicatorIndex: indicatorIndex),
            ],
          ),
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => ClearItemsCartDialog(
                onTapYes: () => Navigator.pop(context),
              ),
            ),
            icon: SvgPicture.asset(
              'assets/images/shopping_cart/delete_basket_icon.svg',
            ),
          ),
        ],
      ),
    );
  }
}

