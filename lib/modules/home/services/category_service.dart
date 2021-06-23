import 'dart:io';

import '../../../errors_handler/failure.dart';
import '../../../services/default_service.dart';
import '../models/category/categories_model.dart';

class CategoryService extends DefaultService {
  static const path = '/productlist';
  Future<CategoriesModel> getCategoriesById(int id) async {
    try {
      final response = await getDataById(path, id);
      final json = response.data;
      final data = CategoriesModel.fromJson(json);
      return data;
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
