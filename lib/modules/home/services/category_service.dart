import 'dart:io';

import 'package:dio/dio.dart';
import 'package:toast_app/errors_handler/failure.dart';
import 'package:toast_app/modules/home/models/category_model.dart';
import 'package:toast_app/modules/home/models/product_model.dart';

import '../models/categories_model.dart';
import '../../../services/default_service.dart';

class CategoryService extends DefaultService {
  static const path = '/productlist';
// TODO: handler errors
  Future<CategoriesModel> getCategoriesById(int id) async {
    try {
      final response = await getDataById(path, id);
      final json = response.data;
      final data = CategoriesModel.fromJson(json);
      insertAllFilter(data);
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

  void insertAllFilter(CategoriesModel data) {
    data.categories?.insert(
        0, CategoryModel(id: 0, name: 'All', products: fetchAll(data)));
  }

  List<ProductModel> fetchAll(CategoriesModel categoriesModel) {
    List<ProductModel> products = [];
    for (final v in categoriesModel.categories!) {
      products.addAll(v.products ?? []);
    }
    return products;
  }
}
