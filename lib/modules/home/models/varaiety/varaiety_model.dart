import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'varaiety_model.freezed.dart';
part 'varaiety_model.g.dart';

@freezed
class VaraietyModel with _$VaraietyModel {
  const factory VaraietyModel(
      {@JsonKey(name: 'term_id') int? termId,
      @Default('') String variety,
      @Default(0.0) double price}) = _VaraietyModel;
  factory VaraietyModel.fromJson(Map<String, dynamic> json) =>
      _$VaraietyModelFromJson(json);
}
