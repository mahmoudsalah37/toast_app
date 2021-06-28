// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$_$_CartModelFromJson(Map<String, dynamic> json) {
  return _$_CartModel(
    subTotal: (json['subTotal'] as num?)?.toDouble() ?? 0,
    vat: (json['vat'] as num?)?.toDouble() ?? 0,
    total: (json['total'] as num?)?.toDouble() ?? 0,
    products: (json['products'] as List<dynamic>?)
            ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'subTotal': instance.subTotal,
      'vat': instance.vat,
      'total': instance.total,
      'products': instance.products,
    };
