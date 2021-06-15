import 'package:dio/dio.dart';

class DefaultService {
  static Dio dio = Dio(BaseOptions(baseUrl: 'https://beta.toast.sa/api/'));
  static Future<Response> getData(int id) async {
    final response = await dio.get('productlist/$id');
    return response;
  }
}
