// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$_$_ProductModelFromJson(Map<String, dynamic> json) {
  return _$_ProductModel(
    id: json['id'] as int?,
    title: json['title'] as String? ?? '',
    metaModel: json['metaModel'] == null
        ? null
        : MetaModel.fromJson(json['metaModel'] as Map<String, dynamic>),
    priceModel: json['priceModel'] == null
        ? null
        : PriceModel.fromJson(json['priceModel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'metaModel': instance.metaModel,
      'priceModel': instance.priceModel,
    };
