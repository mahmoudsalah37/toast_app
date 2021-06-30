import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../../src/colors.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';
import '../models/location/location_model.dart';
import '../provider/locations_provider.dart';

class LocationCardWidget extends StatefulWidget {
  const LocationCardWidget(
      {required this.index, required this.value, required this.onSelected});
  final int index;
  final LocationModel value;
  final void Function(LocationModel location) onSelected;
  @override
  _LocationCardWidgetState createState() => _LocationCardWidgetState();
}

class _LocationCardWidgetState extends State<LocationCardWidget> {
  late LocationsProvider locationsProvider;
  late List<LocationModel> locations;
  late LocationModel currentLocation;

  @override
  void initState() {
    super.initState();
    locationsProvider = Provider.of<LocationsProvider>(context, listen: false);
    locations =
        locationsProvider.locations?.fold((l) => <LocationModel>[], (r) => r) ??
            [];
    currentLocation = locations.elementAt(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: res.getHeight(25),
        width: res.getWidth(100),
        decoration: onSelectChange(
          selected: locationsProvider.getSelectedLocation,
          currentLocation: widget.value,
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: res.getHeight(25),
                width: res.getWidth(100),
                child: GoogleMap(
                  myLocationButtonEnabled: false,
                  myLocationEnabled: false,
                  zoomControlsEnabled: false,
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                        currentLocation.latitude, currentLocation.longitude),
                    zoom: 14,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: res.getHeight(6),
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: CustomStyle.containerShadowDecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${currentLocation.name}',
                      style: theme.textTheme.bodyText1!.copyWith(
                        color: CustomColors.blueColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text('St: ${currentLocation.street}',
                            style: theme.textTheme.subtitle2),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Text('Bul: ${currentLocation.building}',
                              style: theme.textTheme.subtitle2),
                        ),
                        Text('Aprt: ${currentLocation.apartment}',
                            style: theme.textTheme.subtitle2),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => widget.onSelected(widget.value),
              child: Container(
                width: res.getWidth(100),
                height: res.getHeight(100),
                color: Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration onSelectChange(
      {required LocationModel? selected,
      required LocationModel currentLocation}) {
    return selected == currentLocation
        ? CustomStyle.containerShadowDecoration.copyWith(
            border: Border.all(color: CustomColors.blueColor, width: 2),
          )
        : CustomStyle.containerShadowDecoration;
  }
}
