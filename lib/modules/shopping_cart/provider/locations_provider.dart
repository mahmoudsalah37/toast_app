import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:toast_app/modules/shopping_cart/services/add_location_service.dart';
import 'package:toast_app/modules/shopping_cart/services/delete_location_service.dart';

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

  LocationModel _selectedLocation = LocationModel();
  Either<Failure, List<LocationModel>>? _locations;

  Either<Failure, List<LocationModel>>? get locations => _locations;

  void setLocations(Either<Failure, List<LocationModel>> locations) {
    _locations = locations;
    _setState(NotifierState.loading);
  }

  LocationModel get getSelectedLocation => _selectedLocation;

  void setLocation(LocationModel location) {
    _selectedLocation = location;
  }

  void getLocations() async {
    final data = _locationsService.getLocations();
    await Task(() => data).attempt().mapLeftToFailure().run().then(
        (value) => _locations = value as Either<Failure, List<LocationModel>>);
    final v = await data;
    if (v.isNotEmpty) _selectedLocation = v.first;
    _setState(NotifierState.loaded);
  }

  deleteLocation(int id) async {
    final deleteLocationService = DeleteLocationService();
    await deleteLocationService.deleteLocationById(id: id);
    notifyListeners();
  }

  addLocation(LocationModel locationModel) async {
    final addLocationService = AddLocationService();
    await addLocationService.addLocation(locationModel: locationModel);
    notifyListeners();
  }
}
