import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:toast_app/errors_handler/failure.dart';
import 'package:toast_app/modules/auth/model/login/login_model.dart';
import 'package:toast_app/services/default_service.dart';
import 'package:toast_app/utils/classes/helper_methods.dart';

class LoginService extends DefaultService {
  static const path = 'https://beta.toast.sa/api/login';

  static Future<Response> login({required LoginModel loginModel}) async {
    try {
      final defaultService = DefaultService();
      final response = await defaultService.postData(
        path,
        data: loginModel.toJson(),
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
