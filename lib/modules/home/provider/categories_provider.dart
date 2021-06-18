import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../models/categories_model.dart';
import '../models/category_model.dart';
import '../services/category_service.dart';
import '../../../utils/enums/notifier_state.dart';
import '../../../extensions/task_extensions.dart';
import '../../../errors_handler/failure.dart';

class CategoriesProvider extends ChangeNotifier {
  final _categoriesService = CategoryService();

  NotifierState _state = NotifierState.loading;

  NotifierState get state => _state;

  void _setState(NotifierState state) {
    _state = state;
    notifyListeners();
  }

  CategoryModel? _categoryModel;
  Either<Failure, CategoriesModel>? _categories;

  Either<Failure, CategoriesModel>? get categories => _categories;

  void _setCategories(Either<Failure, CategoriesModel> categories) {
    _categories = categories;
    notifyListeners();
  }

  CategoryModel? get getCategory => _categoryModel;

  void setCategory(CategoryModel? category) {
    _categoryModel = category;
    notifyListeners();
  }

  void getCategories() async {
    // _setState(NotifierState.loading);
    final data = _categoriesService.getCategoriesById(3);
    await Task(() => data).attempt().mapLeftToFailure().run().then(
        (value) => _setCategories(value as Either<Failure, CategoriesModel>));
    final v = await data;
    if (v.categories?.isNotEmpty ?? false) _categoryModel = v.categories?.first;
    _setState(NotifierState.loaded);
  }
}
