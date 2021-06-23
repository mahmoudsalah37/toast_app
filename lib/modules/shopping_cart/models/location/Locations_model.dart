import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_model.dart';

part 'Locations_model.freezed.dart';
part 'Locations_model.g.dart';

@freezed
class LocationsModel with _$LocationsModel {
  const factory LocationsModel({
    @Default('') String status,
    @Default(const <LocationModel>[])
    @JsonKey(name: 'locations')
        List<LocationModel> locations,
  }) = _LocationsModel;
  factory LocationsModel.fromJson(Map<String, dynamic> json) =>
      _$LocationsModelFromJson(json);
}
