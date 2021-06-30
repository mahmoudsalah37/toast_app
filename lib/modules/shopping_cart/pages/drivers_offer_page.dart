import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:toast_app/modules/shopping_cart/models/fake_data.dart';

import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';
import '../../../widgets/loading_indicator.dart';
import '../widget/cancel_order_dialog_widget.dart';
import '../widget/custom_estimated_distance_stepper.dart';
import '../widget/driver_request_item_widget.dart';

class DriverOfferPage extends StatefulWidget {
  @override
  _DriverOfferPageState createState() => _DriverOfferPageState();
}

class _DriverOfferPageState extends State<DriverOfferPage> {
  final Completer<GoogleMapController> _controller = Completer();

  bool driverOffersVisibility = false;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(29.990540, 31.150101),
    zoom: 14.4746,
  );

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        driverOffersVisibility = true;
      });
    });
    super.initState();
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
          Stack(
            children: [
              CustomEstimatedDistanceStepper(
                numberOfPlaces: 2,
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
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.only(
                          top: res.getHeight(4),
                          left: 10,
                          right: 10,
                          bottom: 10),
                      decoration: CustomStyle.containerShadowDecoration,
                      child: Text(
                        'Cancel',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline1!
                            .copyWith(color: CustomColors.yellowDeepColor),
                      ),
                    ),
                  ),
                  Container(
                    height: res.getHeight(50),
                    child: ListView.builder(
                      itemCount: driverOfferList.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        final data = driverOfferList.elementAt(index);
                        return DriverOffersItemWidget(
                          onTapAccept: () => Navigator.pushNamed(
                              context, Routes.placeOrderPage),
                          onTapDecline: () {},
                          driverName: data.driverName,
                          driverImg: data.img,
                          driverRate: '${data.driverRate} - Good',
                          driverPriceOffer: data.driverDeliveryOffer,
                          driverDeliveryTime: data.driverDeliveryTime,
                          driverDistance: data.driverDeliveryDistance,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
