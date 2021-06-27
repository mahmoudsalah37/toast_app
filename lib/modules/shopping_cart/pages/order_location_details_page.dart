import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/shopping_cart/provider/locations_provider.dart';
import '../widget/cart_app_bar_widget.dart';
import '../widget/cart_yellow_button.dart';
import '../widget/location_single_selection_item_widget.dart';
import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';

class OrderLocationDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    final theme = Theme.of(context);
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
              child: Consumer<LocationsProvider>(
                  builder: (_, locationsProvider, __) {
                return CustomCartYellowButton(
                  title: 'Continue',
                  onPressed: () {
                    if (locationsProvider.getSelectedLocation == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Select Location Please')));
                      return;
                    }
                    Navigator.pushNamed(context, Routes.driversOfferPage);
                  },
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
