import 'package:dio/dio.dart';

class DefaultService {
  static Dio dio = Dio(BaseOptions(baseUrl: 'https://beta.toast.sa/api'));
  Future<Response> getDataById(String path, int id) async {
    final response = await dio.get('$path/$id');
    return response;
  }
}
