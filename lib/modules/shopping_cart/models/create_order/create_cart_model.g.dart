// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateOrderModel _$_$_CreateOrderModelFromJson(Map<String, dynamic> json) {
  return _$_CreateOrderModel(
    companyId: json['vendor_id'] as int,
    userId: json['user_id'] as int,
    selectedLocationId: json['user_location_id'] as int,
    subTotal: (json['sub_total'] as num).toDouble(),
    discount: (json['discount'] as num).toDouble(),
    vat: (json['vat'] as num).toDouble(),
    orderType: json['type'] as String,
    cartItemsList: (json['cart'] as List<dynamic>)
        .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CreateOrderModelToJson(
        _$_CreateOrderModel instance) =>
    <String, dynamic>{
      'vendor_id': instance.companyId,
      'user_id': instance.userId,
      'user_location_id': instance.selectedLocationId,
      'sub_total': instance.subTotal,
      'discount': instance.discount,
      'vat': instance.vat,
      'type': instance.orderType,
      'cart': instance.cartItemsList,
    };
