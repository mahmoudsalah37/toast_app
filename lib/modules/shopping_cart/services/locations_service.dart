import 'dart:io';

import 'package:dio/dio.dart';

import '../../../errors_handler/failure.dart';
import '../../../services/default_service.dart';
import '../models/location/Locations_model.dart';
import '../models/location/location_model.dart';

class LocationsService extends DefaultService {
  static const getLocationsPath = '/customer/locations';
  static const addLocationPath = '/customer/location/create';
  static const deleteLocationPath = '/customer/location/delete';

  Future<List<LocationModel>> getLocations() async {
    try {
      final response = await getData(getLocationsPath);
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

  Future<Response> addLocation({
    required LocationModel locationModel,
  }) async {
    try {
      final defaultService = DefaultService();
      final response = await defaultService.postData(
        addLocationPath,
        data: locationModel.toJson(),
      );
      return response;
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

  Future<Response> deleteLocationById({required int id}) async {
    try {
      final apiResponse = await getDataById(deleteLocationPath, id);
      return apiResponse;
    } on SocketException {
      throw Failure('No Internet connection');
    } on HttpException {
      throw Failure("Couldn't find the post");
    } on FormatException {
      throw Failure("Bad response format");
    } catch (e) {
      throw Failure('Exception>>>>>  $e');
    }
  }
}
