import 'package:flutter/material.dart';

import '../../../src/colors.dart';
import '../../../src/styles.dart';

class DriverDetailsWidget extends StatelessWidget {
  final String driverName;
  final double driverRate;
  final String driverImg;
  final double driverPriceOffer;
  final int driverDeliveryTime;
  final String driverDistance;
  final bool haveShadow;

  DriverDetailsWidget({
    required this.driverName,
    required this.driverRate,
    required this.driverImg,
    required this.driverPriceOffer,
    required this.driverDeliveryTime,
    required this.driverDistance,
    required this.haveShadow,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: haveShadow
          ? CustomStyle.containerShadowDecoration
          : CustomStyle.containerShadowDecoration.copyWith(
              boxShadow: [],
            ),
      margin: EdgeInsets.all(haveShadow ? 10 : 0),
      padding: EdgeInsets.all(haveShadow ? 10 : 0),
      child: ListTile(
        leading: Container(
          width: 60,
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(driverImg),
            ),
            shape: BoxShape.circle,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              driverName,
              style: theme.textTheme.headline2!
                  .copyWith(color: CustomColors.primaryColor),
            ),
            Text(
              '★ $driverRate',
              style: theme.textTheme.headline3!
                  .copyWith(color: CustomColors.accentColor),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'SAR $driverPriceOffer',
              style: theme.textTheme.headline2!.copyWith(
                color: CustomColors.blueLightColor,
              ),
            ),
            Text(
              '$driverDeliveryTime min',
              style: theme.textTheme.subtitle2,
            ),
            Text(
              '$driverDistance KMs',
              style: theme.textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
