import 'package:dio/dio.dart';

class DefaultService {
  static const domin = 'https://beta.toast.sa';
  static const baseUrl = '$domin/api';
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            'Bearer x4inlCIgqXbrdgDdYQKByCXB1ExVOsMjuq7TN4vmo9yL1kbwSThEGzIyVmGrNUw4Qxigo50fiaKXckSJ'
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
