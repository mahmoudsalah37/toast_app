// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemModel _$_$_CartItemModelFromJson(Map<String, dynamic> json) {
  return _$_CartItemModel(
    id: json['id'] as int?,
    quantity: json['quantity'] as int? ?? 0,
    price: (json['price'] as num?)?.toDouble() ?? 0,
    placeName: json['placeName'] as String? ?? '',
    itemName: json['itemName'] as String? ?? '',
    description: json['description'] as String? ?? '',
    addOns: (json['addOns'] as List<dynamic>?)
            ?.map((e) => AddonModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    withOuts: (json['withOuts'] as List<dynamic>?)
            ?.map((e) => WithoutModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_CartItemModelToJson(_$_CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'placeName': instance.placeName,
      'itemName': instance.itemName,
      'description': instance.description,
      'addOns': instance.addOns,
      'withOuts': instance.withOuts,
    };
