import 'dart:io';
import 'package:toast_app/errors_handler/failure.dart';
import 'package:toast_app/modules/shopping_cart/models/location/location_model.dart';
import 'package:toast_app/services/default_service.dart';

class AddLocationService extends DefaultService {
  static const path = '/customer/location/create';

  Future<void> addLocation({
    required LocationModel locationModel,
  }) async {
    try {
      final defaultService = DefaultService();
      await defaultService.postData(
        path,
        data: locationModel.toJson(),
      );
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
