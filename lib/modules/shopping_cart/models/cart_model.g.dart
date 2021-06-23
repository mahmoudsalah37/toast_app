// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemModel _$_$_CartItemModelFromJson(Map<String, dynamic> json) {
  return _$_CartItemModel(
    id: json['id'] as int? ?? 0,
    quantity: json['quantity'] as int? ?? 0,
    price: (json['price'] as num?)?.toDouble() ?? 0,
    placeName: json['placeName'] as String? ?? '',
    itemName: json['itemName'] as String? ?? '',
    description: json['description'] as String? ?? '',
    addOnsListOfIds: (json['addOnsListOfIds'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList() ??
        [],
    withOutListOfIds: (json['withOutListOfIds'] as List<dynamic>?)
            ?.map((e) => e as int)
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
      'addOnsListOfIds': instance.addOnsListOfIds,
      'withOutListOfIds': instance.withOutListOfIds,
    };
