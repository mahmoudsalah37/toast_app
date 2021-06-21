import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class LocationSingleSelectionItemWidget extends StatefulWidget {
  final double lat;
  final double long;
  final String locationTitle;
  final String street;
  final String building;
  final String aprt;

  const LocationSingleSelectionItemWidget({
    required this.lat,
    required this.long,
    required this.locationTitle,
    required this.street,
    required this.building,
    required this.aprt,
  });

  @override
  _LocationSingleSelectionItemWidgetState createState() =>
      _LocationSingleSelectionItemWidgetState();
}

class _LocationSingleSelectionItemWidgetState
    extends State<LocationSingleSelectionItemWidget> {
  int selectedIndex = -1;

  _isSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: res.getHeight(25),
              width: res.getWidth(100),
              decoration: selectedIndex == index
                  ? CustomStyle.containerShadowDecoration.copyWith(
                border:
                Border.all(color: CustomColors.blueColor, width: 2),
              )
                  : CustomStyle.containerShadowDecoration,
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
                          target: LatLng(widget.lat, widget.long),
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
                            '${widget.locationTitle} $index',
                            style: theme.textTheme.bodyText1!.copyWith(
                              color: CustomColors.blueColor,
                            ),
                          ),
                          Row(
                            children: [
                              Text('St: ${widget.street}',
                                  style: theme.textTheme.subtitle2),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6),
                                child: Text('Bul: ${widget.building}',
                                    style: theme.textTheme.subtitle2),
                              ),
                              Text('Aprt: ${widget.aprt}',
                                  style: theme.textTheme.subtitle2),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _isSelected(index);
                      print('isSelected = $selectedIndex');
                      print('locationTitle = ${widget.locationTitle} $index');
                    },
                    child: Container(
                      width: res.getWidth(100),
                      height: res.getHeight(100),
                      color: Colors.transparent,
                    ),
                  )
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: Radio(
                  //     value: 'value',
                  //     activeColor: CustomColors.blueColor,
                  //     toggleable: true,
                  //     groupValue: groupValue,
                  //     onChanged: (newValue) {
                  //       groupValue = newValue;
                  //       print('groupValue $groupValue');
                  //       setState(() {});
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
