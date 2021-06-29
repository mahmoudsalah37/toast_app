import 'dart:io';
import 'package:dio/dio.dart';
import 'package:toast_app/errors_handler/failure.dart';
import 'package:toast_app/modules/home/models/product/product_model.dart';
import 'package:toast_app/modules/shopping_cart/models/cart/cart_model.dart';
import 'package:toast_app/modules/shopping_cart/models/create_order/create_cart_model.dart';
import 'package:toast_app/services/default_service.dart';

class CreateOrderService extends DefaultService {
  static const path = '/create_order';

  Future<Response> createOrder(CreateOrderModel createOrderModel) async {
    try {
      final defaultService = DefaultService();

      final response = await defaultService.postData(
        path,
        data: createOrderModel.toJson(),
      );
      if (response.statusCode == 200) {
        print('>>>>>> Success');
        print('RESPONSE>>>>>> $response');
      } else {
        print('>>>>>> failed ${response.statusCode}');
      }
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
