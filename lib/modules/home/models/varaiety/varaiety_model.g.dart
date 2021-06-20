// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'varaiety_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaraietyModel _$_$_VaraietyModelFromJson(Map<String, dynamic> json) {
  return _$_VaraietyModel(
    termId: json['term_id'] as int?,
    variety: json['variety'] as String? ?? '',
    price: (json['price'] as num?)?.toDouble() ?? 0.0,
  );
}

Map<String, dynamic> _$_$_VaraietyModelToJson(_$_VaraietyModel instance) =>
    <String, dynamic>{
      'term_id': instance.termId,
      'variety': instance.variety,
      'price': instance.price,
    };
