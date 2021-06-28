import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../../src/colors.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';
import '../models/location/location_model.dart';
import '../provider/locations_provider.dart';
import 'clear_cart_items_dialog.dart';

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
    final locations =
        locationsProvider.locations?.fold((l) => <LocationModel>[], (r) => r) ??
            [];
    if (locations.isNotEmpty) {
      selectedLocaion = 0;
      final location = locations.elementAt(selectedLocaion);
      locationsProvider.setLocation(location);
    }
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
                          onSelected: (selectedLocaion) {
                            setState(() {
                              this.selectedLocaion = selectedLocaion;
                              final location =
                                  locations.elementAt(selectedLocaion);
                              locationsProvider.setLocation(location);
                            });
                          },
                        );
                      },
                    )) ??
            Text('');
      }),
    );
  }
}

class LocationCardWidget extends StatefulWidget {
  const LocationCardWidget({required this.index, required this.onSelected});

  final int index;
  final void Function(int idnex) onSelected;

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
        decoration: changeDecoration(
          selected: locationsProvider.getSelectedLocation as LocationModel,
          currentLocation: currentLocation,
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
                      currentLocation.latitude,
                      currentLocation.longitude,
                    ),
                    zoom: 12,
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
                      currentLocation.name,
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
                        Text('Apart: ${currentLocation.apartment}',
                            style: theme.textTheme.subtitle2),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                widget.onSelected(widget.index);
                print(currentLocation.id);
                print(currentLocation.latitude);
                print(currentLocation.longitude);
              },
              child: Container(
                width: res.getWidth(100),
                height: res.getHeight(100),
                color: Colors.transparent,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => ClearItemsCartDialog(
                    title: 'Delete Location?',
                    onTapYes: () {
                      locationsProvider
                          .deleteLocation(currentLocation.id as int);
                      Navigator.pop(context);
                    },
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  margin: EdgeInsets.all(4),
                  decoration: CustomStyle.containerShadowDecoration,
                  child: SvgPicture.asset(
                    'assets/images/shopping_cart/delete_basket_icon.svg',
                    height: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration changeDecoration(
      {required LocationModel selected,
      required LocationModel currentLocation}) {
    return selected == currentLocation
        ? CustomStyle.containerShadowDecoration.copyWith(
            border: Border.all(color: CustomColors.blueColor, width: 2),
          )
        : CustomStyle.containerShadowDecoration;
  }
}
