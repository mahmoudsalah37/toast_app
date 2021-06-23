import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/shopping_cart/provider/cart_provider.dart';
import 'package:toast_app/modules/shopping_cart/widget/cart_app_bar_widget.dart';
import 'package:toast_app/modules/shopping_cart/widget/cart_yellow_button.dart';
import 'package:toast_app/modules/shopping_cart/widget/location_single_selection_item_widget.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class OrderLocationDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: res.getHeight(4)),
              CustomCartAppBar(indicatorIndex: 2, title: 'Location Details'),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Location', style: theme.textTheme.bodyText1),
                    SizedBox(
                      width: res.getWidth(16),
                      height: res.getHeight(4),
                      child: OutlinedButton(
                        onPressed: () {},
                        child:
                            Icon(Icons.add, color: CustomColors.blueLightColor),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: CustomColors.blueLightColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              LocationSingleSelectionItemWidget(
                lat: 29.990540,
                long: 31.150101,
                aprt: '920',
                street: 'Haram',
                building: '8',
                locationTitle: 'Home',
              ),
              SizedBox(height: res.getHeight(9)),
            ],
          ),
          Positioned(
            top: res.getHeight(92),
            child: SizedBox(
              width: res.getWidth(100),
              child: CustomCartYellowButton(
                title: 'Continue',
                onTap: () =>
                    Navigator.pushNamed(context, Routes.driversOfferPage),
              ),
            ),
          )
        ],
      ),
    );
  }
}
