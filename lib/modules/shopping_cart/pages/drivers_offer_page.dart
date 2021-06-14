import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/modules/shopping_cart/widget/order_details_widget.dart';
import 'package:toast_app/modules/shopping_cart/widget/custom_estimated_distance_stepper.dart';
import 'package:toast_app/modules/shopping_cart/widget/driver_request_item_widget.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';

class DriversOfferPage extends StatefulWidget {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(29.990540, 31.150101),
    zoom: 14.4746,
  );

  @override
  _DriversOfferPageState createState() => _DriversOfferPageState();
}

class _DriversOfferPageState extends State<DriversOfferPage> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: DriversOfferPage._kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          // CustomEstimatedDistanceStepper(
          //   numberOfPlaces: 3,
          //   estimatedDistance: '18',
          //   firstPlaceTitle: 'Fred Perry',
          //   secondPlaceTitle: 'Bershka',
          //   thirdPlaceTitle: 'Zara',
          //   ///firstPlaceDistance is distance between first and second place and
          //   ///distance for place if only one place
          //   firstPlaceDistance: '10',
          //   secondPlaceDistance: '8',
          // ),
          // Container(
          //   color: Colors.black26,
          //   child: Column(
          //     children: [
          //       Container(
          //         width: res.getWidth(100),
          //         margin: EdgeInsets.only(
          //             top: res.getHeight(6), left: 10, right: 10,bottom: 10),
          //         padding: EdgeInsets.all(16),
          //         decoration: CustomStyle.containerShadowDecoration,
          //         child: Text(
          //           'Cancel',
          //           textAlign: TextAlign.center,
          //           style: theme.textTheme.headline1!
          //               .copyWith(color: CustomColors.yellowDeepColor),
          //         ),
          //       ),
          //       Expanded(
          //         child: ListView.builder(
          //           itemCount: 6,
          //           padding: EdgeInsets.zero,
          //           itemBuilder: (context, index) {
          //             return DriverRequestItemWidget(
          //               onTapAccept: () {},
          //               onTapDecline: () {},
          //               driverName: 'Ahmed Nasser $index',
          //               driverImg: 'assets/test/banner_three.png',
          //               driverRate: '4.8 - Good',
          //               driverPriceOffer: '90',
          //               driverDeliveryTime: '15',
          //               driverDistance: '15',
          //             );
          //           },
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          OrderDetailsWidget(
            driverImg: 'assets/test/banner_three.png',
            driverName: 'Ahmed Nasser',
            driverRate: '4.8',
            orderNumber: '12312346332',
            onTapCallDriver: () {},
            onTapChatDriver: () {},
            onTapOrderDetails: () => showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (context) {
                return OrderDetailBottomSheet();
              },
            ),
          )
        ],
      ),
    );
  }
}

//TODO:make preparing overflow in bottomSheet efsel el item bta3t el items
// w put OrderDetailBottomSheet in another dart file then add
class OrderDetailBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          height: res.getHeight(45),
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Address',
                style: theme.textTheme.headline6!
                    .copyWith(color: CustomColors.blueLightColor),
              ),
              Container(
                height: res.getHeight(12),
                width: res.getWidth(100),
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(14),
                decoration: CustomStyle.containerShadowDecoration.copyWith(
                  border: Border.all(color: CustomColors.blueLightColor),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: theme.textTheme.headline5,
                    ),
                    AutoSizeText(
                      'Maryotya Haram, al saad towers, Giza, Egypt',
                      style: theme.textTheme.subtitle1,
                      maxLines: 1,
                      maxFontSize: 20,
                      minFontSize: 12,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Mobile : 0123456789',
                      style: theme.textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Text(
                'Items',
                style: theme.textTheme.headline6!
                    .copyWith(color: CustomColors.blueLightColor),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      height: res.getHeight(14),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(8),
                      decoration: CustomStyle.containerShadowDecoration
                          .copyWith(
                              border: Border.all(
                                  color: CustomColors.blueLightColor),
                              color: index == 0
                                  ? CustomColors.blueLightColor
                                  : Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Super Star',
                                  style: theme.textTheme.headline5),
                              Text('Waves Store',
                                  style: theme.textTheme.headline5),
                            ],
                          ),
                          Text('Lace-up Snicker Shoe, Green',
                              style: theme.textTheme.headline3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('QTY 2', style: theme.textTheme.headline5),
                              Text('SAR 20', style: theme.textTheme.headline5),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: -10,
          right: 50,
          left: 50,
          child: Container(
            height: res.getHeight(7),
            padding: EdgeInsets.all(6),
            decoration: CustomStyle.containerShadowDecoration,
            child: Text(
              'Preparing',
              style: theme.textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
        ),

      ],
    );
  }
}
