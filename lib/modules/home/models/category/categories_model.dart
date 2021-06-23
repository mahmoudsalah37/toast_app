import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_model.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({List<CategoryModel>? categories}) =
      _CategoriesModel;
  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}
