import 'dart:io';

import 'package:dio/dio.dart';

import '../../../errors_handler/failure.dart';
import '../../../services/default_service.dart';

class CreateOrderService extends DefaultService {
  static const path = '/create_order';

  Future<Response> createOrder(Map<String, dynamic> data) async {
    try {
      final defaultService = DefaultService();

      final response = await defaultService.postData(
        path,
        data: data,
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
