import 'package:flutter/material.dart';

import '../../../src/colors.dart';
import '../../../src/styles.dart';
import 'driver_details_widget.dart';

class DriverOffersItemWidget extends StatelessWidget {
  final String driverName;
  final String driverRate;
  final String driverImg;
  final String driverPriceOffer;
  final String driverDeliveryTime;
  final String driverDistance;
  final VoidCallback onTapDecline;
  final VoidCallback onTapAccept;

  DriverOffersItemWidget({
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
    ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: CustomStyle.containerShadowDecoration,
      child: Column(
        children: [
          DriverDetailsWidget(
            haveShadow: false,
            driverName: driverName,
            driverImg: driverImg,
            driverRate: driverRate,
            driverPriceOffer: driverPriceOffer,
            driverDeliveryTime: driverDeliveryTime,
            driverDistance: driverDistance,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                onPressed: onTapDecline,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.red),
                  shape: StadiumBorder(),
                ),
                child: Text('Decline',
                    style:
                        theme.textTheme.subtitle2!.copyWith(color: Colors.red)),
              ),
              OutlinedButton(
                onPressed: onTapAccept,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: CustomColors.blueLightColor),
                  shape: StadiumBorder(),
                ),
                child: Text('Accept', style: theme.textTheme.subtitle2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
