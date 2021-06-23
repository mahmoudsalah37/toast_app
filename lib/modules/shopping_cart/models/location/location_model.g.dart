// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$_$_LocationModelFromJson(Map<String, dynamic> json) {
  return _$_LocationModel(
    id: json['id'] as int?,
    userId: json['user_id'] as int?,
    name: json['name'] as String,
    street: json['street'] as String,
    building: json['building'] as String,
    apartment: json['apartment'] as String,
    longitude: (json['longitude'] as num).toDouble(),
    latitude: (json['latitude'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'street': instance.street,
      'building': instance.building,
      'apartment': instance.apartment,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
