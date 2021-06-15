import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';

class OrderedDetailsBottomSheetItem extends StatelessWidget {
  final String orderTitle;
  final String orderPlaceName;
  final String orderDescription;
  final String orderQuantity;
  final String orderPrice;
  final Color backgroundColor;

  OrderedDetailsBottomSheetItem({
    required this.orderTitle,
    required this.orderPlaceName,
    required this.orderDescription,
    required this.orderQuantity,
    required this.orderPrice,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Container(
      height: res.getHeight(14),
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(8),
      decoration: CustomStyle.containerShadowDecoration.copyWith(
          border: Border.all(color: CustomColors.blueLightColor),
          color: backgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(orderTitle, style: theme.textTheme.headline5),
              Text(orderPlaceName, style: theme.textTheme.headline5),
            ],
          ),
          Text(orderDescription, style: theme.textTheme.headline3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('QTY $orderQuantity', style: theme.textTheme.headline5),
              Text('SAR $orderPrice', style: theme.textTheme.headline5),
            ],
          ),
        ],
      ),
    );
  }
}
