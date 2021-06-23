import 'package:flutter/material.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class CustomStepperDots extends StatelessWidget {
  const CustomStepperDots({
    Key? key,
    required this.indicatorIndex,
  }) : super(key: key);

  final int indicatorIndex;

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    return Container(
      width:res.getWidth(20) ,
      child: Row(
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
    );
  }
}
