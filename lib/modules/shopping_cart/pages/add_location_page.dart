import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/shopping_cart/models/location/location_model.dart';
import 'package:toast_app/modules/shopping_cart/provider/locations_provider.dart';
import 'package:toast_app/modules/shopping_cart/provider/map_service.dart';
import 'package:toast_app/modules/shopping_cart/widget/cart_yellow_button.dart';
import 'package:toast_app/src/styles.dart';
import 'package:toast_app/utils/classes/helper_methods.dart';
import 'package:toast_app/utils/classes/resposive.dart';
import 'package:geolocator/geolocator.dart' as geoLocator;
import 'package:geocoding/geocoding.dart';

class AddLocationPage extends StatefulWidget {
  @override
  _AddLocationPageState createState() => _AddLocationPageState();
}

class _AddLocationPageState extends State<AddLocationPage> {
  Completer<GoogleMapController> mapController = Completer();
  TextEditingController searchTEC = TextEditingController(text: ''),
      nameTEC = TextEditingController(text: ''),
      streetTEC = TextEditingController(text: ''),
      apartTEC = TextEditingController(text: ''),
      floorTEC = TextEditingController(text: '');

  late double lat = 0;
  late double long = 0;

  @override
  void initState() {
    MapService.getCurrentLocation(
      mapController: mapController,
      initialPosition: LatLng(0, 0),
    );
    MapService.getCurrentLatLngOfUser().then(
      (value) {
        lat = value.latitude;
        long = value.longitude;
        setState(() {});
      },
    );
    MapService.markers.clear();
    super.initState();
  }

  void setStateFunction() => setState(() {});

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    var locationProvider =
        Provider.of<LocationsProvider>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            markers: Set.from(MapService.markers),
            mapType: MapType.normal,
            onTap: (point) {
              MapService.markers.isEmpty
                  ? MapService.addMarker(point.latitude, point.longitude)
                  : MapService.replaceMarker(point.latitude, point.longitude);
              lat = point.latitude;
              long = point.longitude;
              setState(() {});
              print(
                  'pointLat = ${point.latitude} pointLong = ${point.longitude}');
              print('lat= $lat long = $long');
            },
            onMapCreated: (GoogleMapController controller) =>
                mapController.complete(controller),
            initialCameraPosition:
                CameraPosition(target: LatLng(lat, long), zoom: 12),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: TextField(
              controller: searchTEC,
              style: theme.textTheme.headline2,
              textInputAction: TextInputAction.search,
              onSubmitted: (value) {
                MapService.searchMap(
                  mapController: mapController,
                  searchTEC: searchTEC,
                  setState: setStateFunction,
                ).then((value) {
                  lat = value.latitude;
                  long = value.longitude;
                });
              },
              decoration: CustomStyle.registerInputDecoration.copyWith(
                hintText: 'Search...',
                filled: true,
                suffixIcon: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => searchTEC.clear(),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              width: res.size.width,
              height: res.getHeight(35),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    TextField(
                      controller: nameTEC,
                      style: theme.textTheme.headline2,
                      decoration: CustomStyle.registerInputDecoration
                          .copyWith(hintText: 'Place title (Home, Work...)'),
                    ),
                    SizedBox(height: 6),
                    TextField(
                      controller: streetTEC,
                      style: theme.textTheme.headline2,
                      decoration: CustomStyle.registerInputDecoration.copyWith(
                        hintText: 'Street',
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: apartTEC,
                            style: theme.textTheme.headline2,
                            keyboardType: TextInputType.number,
                            decoration: CustomStyle.registerInputDecoration
                                .copyWith(hintText: 'Building/Villa No.'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            controller: floorTEC,
                            style: theme.textTheme.headline2,
                            keyboardType: TextInputType.number,
                            decoration: CustomStyle.registerInputDecoration
                                .copyWith(hintText: 'Floor/Flat No.'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Center(
                      child: CustomCartYellowButton(
                        onPressed: () => addLocation(locationProvider),
                        title: 'Add Address',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  addLocation(LocationsProvider locationProvider) async {
    print('lat= $lat long = $long');
    if (nameTEC.text.isEmpty ||
        streetTEC.text.isEmpty ||
        apartTEC.text.isEmpty ||
        floorTEC.text.isEmpty) {
      HelperMethods.showToast(msg: 'Please complete location info');
    } else {
      await locationProvider.addLocation(LocationModel().copyWith(
        name: nameTEC.text,
        street: streetTEC.text,
        apartment: apartTEC.text,
        building: floorTEC.text,
        latitude: lat,
        longitude: long,
      ));
      Navigator.pop(context);
    }
  }
}
