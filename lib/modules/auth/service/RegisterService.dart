import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:toast_app/modules/auth/model/register/register_model.dart';

import '../../../errors_handler/failure.dart';
import '../../../services/default_service.dart';
import '../../../utils/classes/helper_methods.dart';

class RegisterService extends DefaultService {
  static const path = '/register';

  static Future<Response> register({required RegisterModel registerModel}) async {
    try {
      final defaultService = DefaultService();
      final response = await defaultService.postData(
        path,
        data: registerModel.toJson(),
      );
      return response;
    } on SocketException {
      HelperMethods.showToast(
        msg: 'No Internet connection',
        toastLength: Toast.LENGTH_LONG,
      );
      throw Failure('No Internet connection');
    } on HttpException {
      throw Failure("Couldn't find the post");
    } on FormatException {
      throw Failure("Bad response format");
    } catch (e) {
      HelperMethods.showToast(
        msg: 'Email or Password incorrect',
        toastLength: Toast.LENGTH_LONG,
      );
      throw Failure('Exception>>>> $e');
    }
  }
}
