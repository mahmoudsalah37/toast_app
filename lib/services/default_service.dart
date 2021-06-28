import 'package:dio/dio.dart';

class DefaultService {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://beta.toast.sa/api',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            'Bearer dd6f1RKdIG0190NYF9o2d7xUBf8rCcQ2aZtxWHLC8SthgIEOJq09W0CS3EURq1rUt4xUSlFe4t67t9SI'
      },
    ),
  );

  Future<Response> getDataById(String path, int id) async {
    final response = await dio.get('$path/$id');
    return response;
  }

  Future<Response> getData(String path) async {
    final response = await dio.get('$path');
    return response;
  }

   Future<Response> postData(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    final response = await dio.post('$path', data: data);
    return response;
  }
}
