import 'dart:io';

import '../models/location/Locations_model.dart';
import '../models/location/location_model.dart';

import '../../../errors_handler/failure.dart';
import '../../../services/default_service.dart';

class LocationsService extends DefaultService {
  static const path = '/customer/locations';
  Future<List<LocationModel>> getLocations() async {
    try {
      final response = await getData(path);
      final json = response.data;
      final data = LocationsModel.fromJson(json);
      return data.locations;
    } on SocketException {
      throw Failure('No Internet connection');
    } on HttpException {
      throw Failure("Couldn't find the post");
    } on FormatException {
      throw Failure("Bad response format");
    } catch (e) {
      throw Failure('Exeption');
    }
  }
}
