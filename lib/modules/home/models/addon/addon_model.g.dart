// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddonModel _$_$_AddonModelFromJson(Map<String, dynamic> json) {
  return _$_AddonModel(
    id: json['id'] as int?,
    title: json['title'] as String? ?? '',
    price: PriceModel.fromJson(json['price'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AddonModelToJson(_$_AddonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
    };
