import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/shopping_cart/models/location/location_model.dart';
import 'package:toast_app/modules/shopping_cart/provider/locations_provider.dart';
import 'package:toast_app/modules/shopping_cart/services/add_location_service.dart';
import 'package:toast_app/modules/shopping_cart/widget/cart_yellow_button.dart';
import 'package:toast_app/src/styles.dart';
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
                );
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
                        onPressed: () async {
                          print('lat= $lat long = $long');
                          await locationProvider.addLocation(
                            LocationModel().copyWith(
                              name: nameTEC.text,
                              street: streetTEC.text,
                              apartment: apartTEC.text,
                              building: floorTEC.text,
                              latitude: lat,
                              longitude: long,
                            ),
                          );
                          Navigator.pop(context);
                        },
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
}

class MapService {
  static List<Marker> markers = [];

  ///This method to get current location and animate with camera on this lat and long
  static Future<void> getCurrentLocation({
    required Completer<GoogleMapController> mapController,
    required LatLng initialPosition,
  }) async {
    Position position = await getCurrentLatLngOfUser();
    final GoogleMapController controller = await mapController.future;

    initialPosition = LatLng(position.latitude, position.longitude);
    final newCameraPosition = CameraPosition(
      target: LatLng(position.latitude, position.longitude),
      zoom: 14.4746,
    );
    controller.animateCamera(
      CameraUpdate.newCameraPosition(newCameraPosition),
    );
  }

  static Future<Position> getCurrentLatLngOfUser() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return position;
  }

  ///This method to search then animate camera and add marker on map searched location
  static Future<void> searchMap(
      {required Completer<GoogleMapController> mapController,
      required TextEditingController searchTEC,
      required Function setState}) async {
    try {
      final position =
          await GeocodingPlatform.instance.locationFromAddress(searchTEC.text);
      final GoogleMapController controller = await mapController.future;
      final newCameraPosition = CameraPosition(
        target: LatLng(position[0].latitude, position[0].longitude),
        zoom: 14.4746,
      );
      markers.isEmpty
          ? addMarker(position[0].latitude, position[0].longitude)
          : replaceMarker(position[0].latitude, position[0].longitude);
      GeocodingPlatform.instance.placemarkFromCoordinates(
          position[0].latitude, position[0].longitude);
      controller.animateCamera(
        CameraUpdate.newCameraPosition(newCameraPosition),
      );
      setState();
    } catch (e) {
      print('search exception>>>>>>>>>> $e');
    }
  }

  ///this method replace marker which added
  static void replaceMarker(double lat, double long) {
    markers.replaceRange(0, 1, [
      Marker(
        markerId: MarkerId('2'),
        position: LatLng(lat, long),
        icon: BitmapDescriptor.defaultMarker,
        // icon: BitmapDescriptor.fromAssetImage(ImageConfiguration.size.width, 'assetName'),
        onTap: () => print('on tap marker'),
      ),
    ]);
  }

  ///this method added marker
  static void addMarker(double lat, double long) {
    markers.add(
      Marker(
        markerId: MarkerId('1'),
        position: LatLng(lat, long),
        icon: BitmapDescriptor.defaultMarker,
        // icon: BitmapDescriptor.fromAssetImage(ImageConfiguration.size.width, 'assetName'),
        onTap: () => print('on tap marker'),
      ),
    );
  }
}
