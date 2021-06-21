import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: CustomColors.blueColor,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: 10,
                    child: Divider(
                      color: CustomColors.blueColor,
                      height: 10,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: indicatorIndex == 2 || indicatorIndex == 3
                          ? CustomColors.blueColor
                          : Colors.white,
                      border: Border.all(color: CustomColors.blueColor),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: 10,
                    child: Divider(
                      color: CustomColors.blueColor,
                      height: 10,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: indicatorIndex == 3
                          ? CustomColors.blueColor
                          : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: CustomColors.blueColor),
                    ),
                  ),
                ],
              ),
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
