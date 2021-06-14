import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';

class DriverRequestItemWidget extends StatelessWidget {
  final String driverName;
  final String driverRate;
  final String driverImg;
  final String driverPriceOffer;
  final String driverDeliveryTime;
  final String driverDistance;
  final VoidCallback onTapDecline;
  final VoidCallback onTapAccept;

  DriverRequestItemWidget({
    required this.driverName,
    required this.driverRate,
    required this.driverImg,
    required this.driverPriceOffer,
    required this.driverDeliveryTime,
    required this.driverDistance,
    required this.onTapDecline,
    required this.onTapAccept,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: CustomStyle.containerShadowDecoration,
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(driverImg)),
                  shape: BoxShape.circle),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  driverName,
                  style: theme.textTheme.headline3,
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
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlineButton(
                onPressed: onTapDecline,
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                shape: StadiumBorder(),
                child: Text(
                  'Decline',
                  style: theme.textTheme.subtitle2!.copyWith(color: Colors.red),
                ),
              ),
              OutlineButton(
                onPressed: onTapAccept,
                borderSide: BorderSide(
                  color: CustomColors.blueLightColor,
                ),
                shape: StadiumBorder(),
                child: Text('Accept', style: theme.textTheme.subtitle2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
