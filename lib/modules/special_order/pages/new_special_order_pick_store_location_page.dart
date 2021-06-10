import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:toast_app/modules/special_order/widgets/app_bar._widget.dart';
import 'package:toast_app/modules/special_order/widgets/enter_location_tfw.dart';
import 'package:toast_app/modules/special_order/widgets/text_button_widget.dart';
import 'dart:async';

class NewSpecialOrderPickStoreLocationPage extends StatelessWidget {
  NewSpecialOrderPickStoreLocationPage();
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          buildAppBarSpecialOrderWidget(context, 'Pick Your Stores Locations'),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            EnterLocationTFW(
              hitText: 'Enter Location',
              textEditingController: TextEditingController(text: ''),
            ),
            Expanded(
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            SizedBox(height: 20),
            TextButtonWidget(
              text: 'Next',
            )
          ],
        ),
      ),
    );
  }
}
