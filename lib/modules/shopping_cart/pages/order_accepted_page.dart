import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:toast_app/modules/shopping_cart/widget/order_details_widget.dart';
import 'package:toast_app/src/routes.dart';
import 'package:url_launcher/url_launcher.dart' as urLauncher;

import 'order_details_bottom_sheet.dart';

class OrderAcceptedPage extends StatelessWidget {
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
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled:false,
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(29.990540, 31.150101),
              zoom: 15,
            ),
          ),
          OrderDetailsWidget(
            driverImg: 'assets/test/banner_three.png',
            driverName: 'Ahmed Nasser',
            driverRate: '4.8',
            orderNumber: '12312346332',
            onTapCallDriver: () async =>
                await _makePhoneCall(phoneNumber: '01119193535'),
            onTapChatDriver: () {
              Navigator.pushNamed(context, Routes.chatPage);
            },
            onTapOrderDetails: () => showModalBottomSheet(
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              context: context,
              builder: (context) => OrderDetailBottomSheet(),
            ),
          ),
        ],
      ),
    );
  }
}
