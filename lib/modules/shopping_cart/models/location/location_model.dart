import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'street') String street,
    @Default('') @JsonKey(name: 'building') String building,
    @Default('') @JsonKey(name: 'apartment') String apartment,
    @Default(0) @JsonKey(name: 'longitude') double longitude,
    @Default(0) @JsonKey(name: 'latitude') double latitude,
  }) = _LocationModel;
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
