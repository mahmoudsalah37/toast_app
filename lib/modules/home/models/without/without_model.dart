import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'without_model.freezed.dart';
part 'without_model.g.dart';

@freezed
class WithoutModel with _$WithoutModel {
  const factory WithoutModel({
    int? id,
    @Default('') String title,
    // @PriceModel()
    // @Default(const PriceModel()) @JsonKey() PriceModel price,
  }) = _WithoutModel;
  factory WithoutModel.fromJson(Map<String, dynamic> json) =>
      _$WithoutModelFromJson(json);
}
