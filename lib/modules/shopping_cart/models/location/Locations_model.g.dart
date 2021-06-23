// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Locations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationsModel _$_$_LocationsModelFromJson(Map<String, dynamic> json) {
  return _$_LocationsModel(
    status: json['status'] as String? ?? '',
    locations: (json['locations'] as List<dynamic>)
        .map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_LocationsModelToJson(_$_LocationsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'locations': instance.locations,
    };
