// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$_$_ProductModelFromJson(Map<String, dynamic> json) {
  return _$_ProductModel(
    id: json['id'] as int?,
    title: json['title'] as String? ?? '',
    metaModel: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    priceModel: PriceModel.fromJson(json['price'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'meta': instance.metaModel,
      'price': instance.priceModel,
    };
