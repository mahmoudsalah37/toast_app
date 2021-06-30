// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverOfferModel _$_$_DriverOfferModelFromJson(Map<String, dynamic> json) {
  return _$_DriverOfferModel(
    driverName: json['driverName'] as String? ?? '',
    img: json['img'] as String? ?? '',
    driverDeliveryDistance: json['driverDeliveryDistance'] as String? ?? '',
    driverDeliveryTime: json['driverDeliveryTime'] as int? ?? 0,
    driverDeliveryOffer: (json['driverDeliveryOffer'] as num?)?.toDouble() ?? 0,
    driverRate: (json['driverRate'] as num?)?.toDouble() ?? 0,
  );
}

Map<String, dynamic> _$_$_DriverOfferModelToJson(
        _$_DriverOfferModel instance) =>
    <String, dynamic>{
      'driverName': instance.driverName,
      'img': instance.img,
      'driverDeliveryDistance': instance.driverDeliveryDistance,
      'driverDeliveryTime': instance.driverDeliveryTime,
      'driverDeliveryOffer': instance.driverDeliveryOffer,
      'driverRate': instance.driverRate,
    };
