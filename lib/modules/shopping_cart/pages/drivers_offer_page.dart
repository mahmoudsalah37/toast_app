import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:toast_app/modules/shopping_cart/widget/cancel_order_dialog_widget.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/utils/classes/resposive.dart';
import 'package:toast_app/modules/shopping_cart/widget/custom_estimated_distance_stepper.dart';
import 'package:toast_app/modules/shopping_cart/widget/driver_request_item_widget.dart';
import 'package:toast_app/modules/shopping_cart/widget/order_details_widget.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';
import 'order_details_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart' as urLauncher;

class DriversOfferPage extends StatefulWidget {
  @override
  _DriversOfferPageState createState() => _DriversOfferPageState();
}

class _DriversOfferPageState extends State<DriversOfferPage> {
  final Completer<GoogleMapController> _controller = Completer();

  bool driverOffersVisibility = false;
  bool orderDetailsVisibility = false;
  bool estimatedStepperVisibility = true;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(29.990540, 31.150101),
    zoom: 14.4746,
  );

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        driverOffersVisibility = true;
      });
    });
    super.initState();
  }

  Future<void> _makePhoneCall({required String phoneNumber}) async {
    phoneNumber = 'tel://$phoneNumber';
    if (await urLauncher.canLaunch(phoneNumber)) {
      await urLauncher.launch(phoneNumber);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            zoomControlsEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Visibility(
            visible: estimatedStepperVisibility,
            child: Stack(
              children: [
                CustomEstimatedDistanceStepper(
                  numberOfPlaces: 3,
                  estimatedDistance: '18',
                  firstPlaceTitle: 'Fred Perry',
                  secondPlaceTitle: 'Bershka',
                  thirdPlaceTitle: 'Zara',

                  ///firstPlaceDistance is distance between first and second place and
                  ///distance for place if only one place
                  firstPlaceDistance: '10',
                  secondPlaceDistance: '8',
                ),
                LoadingIndicator()
              ],
            ),
          ),
          Visibility(
            visible: driverOffersVisibility,
            child: Container(
              color: Colors.black26,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => CancelOrderDialogWidget(),
                    ),
                    child: Container(
                      width: res.getWidth(100),
                      margin: EdgeInsets.only(
                          top: res.getHeight(6),
                          left: 10,
                          right: 10,
                          bottom: 10),
                      padding: EdgeInsets.all(16),
                      decoration: CustomStyle.containerShadowDecoration,
                      child: Text(
                        'Cancel',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline1!
                            .copyWith(color: CustomColors.yellowDeepColor),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 6,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return DriverOffersItemWidget(
                          onTapAccept: () {
                            setState(() {
                              driverOffersVisibility = false;
                              orderDetailsVisibility = true;
                              estimatedStepperVisibility = false;
                            });
                          },
                          onTapDecline: () {},
                          driverName: 'Ahmed Nasser $index',
                          driverImg: 'assets/test/banner_three.png',
                          driverRate: '4.8 - Good',
                          driverPriceOffer: '90',
                          driverDeliveryTime: '15',
                          driverDistance: '15',
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Visibility(
            visible: orderDetailsVisibility,
            child: OrderDetailsWidget(
              driverImg: 'assets/test/banner_three.png',
              driverName: 'Ahmed Nasser',
              driverRate: '4.8',
              orderNumber: '12312346332',
              onTapCallDriver: () async {
                await _makePhoneCall(phoneNumber: '01119193535');
              },
              onTapChatDriver: () {
                Navigator.pushNamed(context, Routes.chatPage);
              },
              onTapOrderDetails: () => showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => OrderDetailBottomSheet(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    return Align(
      alignment: Alignment.center,
      child: Container(
        color: Colors.black12,
        width: res.getWidth(100),
        height: res.getHeight(100),
        child: Center(
          child: Container(
            decoration: CustomStyle.containerShadowDecoration.copyWith(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(20),
            child: CupertinoActivityIndicator(radius: 20),
          ),
        ),
      ),
    );
  }
}
