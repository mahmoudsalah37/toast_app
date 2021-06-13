import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:toast_app/modules/special_order/widgets/app_bar._widget.dart';
import 'package:toast_app/modules/special_order/widgets/search_text_field_widget.dart';
import 'package:toast_app/modules/special_order/widgets/text_button_widget.dart';
import 'dart:async';

class NewSpecialOrderPickStoreLocationPage extends StatelessWidget {
  NewSpecialOrderPickStoreLocationPage();
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(20.990540, 31.150101),
    zoom: 6,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:
          buildAppBarSpecialOrderWidget(context, 'Pick Your Stores Locations'),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchTFW(
              text: 'Search...',
              onChange: (v) {},
            ),
            Expanded(
              child: GoogleMap(
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                zoomControlsEnabled: false,
                markers: {
                  Marker(
                    markerId: MarkerId('1'),
                    position: LatLng(20.990540, 30.150101),
                    icon: BitmapDescriptor.defaultMarker,
                  ),
                  Marker(
                    markerId: MarkerId('2'),
                    position: LatLng(20.790540, 31.850101),
                    icon: BitmapDescriptor.defaultMarker,
                  ),
                  Marker(
                    markerId: MarkerId('3'),
                    position: LatLng(20.890540, 31.150101),
                    icon: BitmapDescriptor.defaultMarker,
                  )
                },
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            SizedBox(height: 20),
            // TextButtonWidget(
            //   text: 'Next',
            // )
          ],
        ),
      ),
    );
  }
}
