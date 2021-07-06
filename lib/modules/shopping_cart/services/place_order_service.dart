import 'dart:io';

import 'package:dio/dio.dart';
import '../../../errors_handler/failure.dart';
import '../models/place_order/place_order_model.dart';
import '../../../services/default_service.dart';

class PlaceOrderService extends DefaultService {
  static const path = '/customer/driver/accept';

  static Future<Response> placeOrder(
      {required PlaceOrderModel placeOrderModel}) async {
    try {
      final defaultService = DefaultService();
      final response = await defaultService.postData(
        path,
        data: placeOrderModel.toJson(),
      );
      return response;
    } on SocketException {
      throw Failure('No Internet connection');
    } on HttpException {
      throw Failure("Couldn't find the post");
    } on FormatException {
      throw Failure("Bad response format");
    } catch (e) {
      throw Failure('Exception>>>> $e');
    }
  }
}
