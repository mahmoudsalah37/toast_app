import 'package:flutter/material.dart';
import '../widget/cart_app_bar_widget.dart';
import '../widget/cart_yellow_button.dart';
import '../widget/location_single_selection_item_widget.dart';
import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';

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
              LocationSingleSelectionItemWidget(),
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
