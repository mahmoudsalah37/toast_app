import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:toast_app/utils/classes/helper_methods.dart';

import '../../../errors_handler/failure.dart';
import '../../../extensions/task_extensions.dart';
import '../../../utils/enums/notifier_state.dart';
import '../models/location/location_model.dart';
import '../services/locations_service.dart';

class LocationsProvider extends ChangeNotifier {
  final _locationsService = LocationsService();

  NotifierState _state = NotifierState.loading;

  NotifierState get state => _state;

  void _setState(NotifierState state) {
    _state = state;
    notifyListeners();
  }

  LocationModel? _selectedLocation;
  Either<Failure, List<LocationModel>>? _locations;

  Either<Failure, List<LocationModel>>? get locations => _locations;

  void setLocations(Either<Failure, List<LocationModel>> locations) {
    _locations = locations;
    _setState(NotifierState.loading);
  }

  LocationModel? get getSelectedLocation => _selectedLocation;

  void setLocation(LocationModel location) {
    _selectedLocation = location;
    notifyListeners();
  }

  void getLocations() async {
    _setState(NotifierState.loading);
    final data = _locationsService.getLocations();
    await Task(() => data).attempt().mapLeftToFailure().run().then(
        (value) => _locations = value as Either<Failure, List<LocationModel>>);
    final locations =
        _locations?.fold((l) => <LocationModel>[], (r) => r) ?? [];
    if (locations.isNotEmpty) {
      _selectedLocation = locations.elementAt(0);
    }
    _setState(NotifierState.loaded);
  }

  Future<void> deleteLocation(int id, int index) async {
    final locationService = LocationsService();
    final response = await locationService.deleteLocationById(id: id);
    if (response.statusCode == 200) {
      getLocations();
    } else {
      print('deleteLocationError');
    }
  }

  Future<void> addLocation(LocationModel locationModel) async {
    final location = _locations!.fold((l) => [], (r) => r);
    final locationLength = location.length;
    if (locationLength == 3) {
      HelperMethods.showToast(
        msg: 'Sorry you have Maximum Locations,\n delete to add another',
        fontSize: 12,
      );
    } else {
      final response =
          await _locationsService.addLocation(locationModel: locationModel);
      if (response.statusCode == 200) {
        HelperMethods.showToast(msg: 'Location added');
        getLocations();
      } else {
        print('addLocationError');
      }
    }
  }
}
