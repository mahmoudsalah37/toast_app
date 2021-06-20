// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesModel _$_$_CategoriesModelFromJson(Map<String, dynamic> json) {
  return _$_CategoriesModel(
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CategoriesModelToJson(_$_CategoriesModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
