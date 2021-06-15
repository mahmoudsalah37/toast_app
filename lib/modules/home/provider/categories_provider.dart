import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:toast_app/errors_handler/failure.dart';
import 'package:toast_app/modules/home/models/categories_model.dart';
import 'package:toast_app/modules/home/services/category_service.dart';
import '../../../utils/enums/notifier_state.dart';

class CategoriesProvider extends ChangeNotifier {
  final _categoriesService = CategoryService();

  NotifierState _state = NotifierState.loading;
  NotifierState get state => _state;
  void _setState(NotifierState state) {
    _state = state;
    notifyListeners();
  }

  Either<Failure, CategoriesModel>? _categories;
  Either<Failure, CategoriesModel>? get categories => _categories;
  void _setCategories(Either<Failure, CategoriesModel> categories) {
    _categories = categories;
    notifyListeners();
  }

  void getCategories() async {
    // _setState(NotifierState.loading);
    await Task(() => _categoriesService.getCategoriesById(3))
        .attempt()
        .mapLeftToFailure()
        .run()
        .then((value) =>
            _setCategories(value as Either<Failure, CategoriesModel>));
    _setState(NotifierState.loaded);
  }
}

extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<Failure, U>> mapLeftToFailure() {
    return this.map(
      (either) => either.leftMap((obj) {
        try {
          return obj as Failure;
        } catch (e) {
          throw obj;
        }
      }),
    );
  }
}
