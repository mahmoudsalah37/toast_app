import 'dart:io';

import 'package:dio/dio.dart';
import 'package:toast_app/errors_handler/failure.dart';

import '../models/categories_model.dart';
import '../../../services/default_service.dart';

class CategoryService extends DefaultService {
  static const path = '/productlist';
// TODO: handler errors
  Future<CategoriesModel> getCategoriesById(int id) async {
    try {
      final response = await getDataById(path, id);
      final json = response.data;
      final categories = CategoriesModel.fromJson(json);
      return categories;
    } on SocketException {
      throw Failure('No Internet connection');
    } on HttpException {
      throw Failure("Couldn't find the post");
    } on FormatException {
      throw Failure("Bad response format");
    } catch (e) {
      throw Failure('Exeption');
    }
  }
}
