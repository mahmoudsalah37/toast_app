import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../../src/colors.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';
import '../models/location/location_model.dart';
import '../provider/locations_provider.dart';
import 'location_card_widget.dart';

class LocationSingleSelectionItemWidget extends StatefulWidget {
  const LocationSingleSelectionItemWidget();

  @override
  _LocationSingleSelectionItemWidgetState createState() =>
      _LocationSingleSelectionItemWidgetState();
}

class _LocationSingleSelectionItemWidgetState
    extends State<LocationSingleSelectionItemWidget> {
  late LocationsProvider locationsProvider;
  List<LocationModel> locations = <LocationModel>[];
  int selectedLocaion = -1;
  @override
  void initState() {
    super.initState();
    locationsProvider = Provider.of<LocationsProvider>(context, listen: false)
      ..getLocations();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
          Consumer<LocationsProvider>(builder: (context, locationsProvider, w) {
        return locationsProvider.locations?.fold(
                (l) => Text(l.message),
                (locations) => ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: locations.length,
                      itemBuilder: (context, index) {
                        return LocationCardWidget(
                          index: index,
                          value: locations.elementAt(index),
                          onSelected: (location) {
                            locationsProvider.setLocation(location);
                          },
                        );
                      },
                    )) ??
            Text('');
      }),
    );
  }
}
