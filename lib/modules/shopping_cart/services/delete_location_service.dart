import 'dart:io';
import 'package:dio/dio.dart';
import 'package:toast_app/errors_handler/failure.dart';
import 'package:toast_app/modules/shopping_cart/models/location/location_model.dart';
import 'package:toast_app/services/default_service.dart';

class DeleteLocationService extends DefaultService {
  static const path = '/customer/location/delete';

  Future<void> deleteLocationById({required int id}) async {
    try {
      final apiResponse = await getDataById(path, id);

      if (apiResponse.statusCode == 200) {
        print('>>>>>> Success');
      } else {
        print('>>>>>> failed ${apiResponse.statusCode}');
      }
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
