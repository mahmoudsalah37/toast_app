// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceOrderModel _$_$_PlaceOrderModelFromJson(Map<String, dynamic> json) {
  return _$_PlaceOrderModel(
    orderId: json['order_id'] as int,
    driverId: json['driver_id'] as int,
    deliveryFees: (json['delivery_fees'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_PlaceOrderModelToJson(_$_PlaceOrderModel instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'driver_id': instance.driverId,
      'delivery_fees': instance.deliveryFees,
    };
