import 'package:dio/dio.dart';

class DefaultService {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://beta.toast.sa/api',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            'Bearer mhF77LK9vtXMvSRdwehvIimr19DMAEwoDL4kfgV4SwwOrQoR9mY9nGaxFY5iVIDK765ldgcGSaFHjIQR'
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
