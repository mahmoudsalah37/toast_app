import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'preview_model.freezed.dart';
part 'preview_model.g.dart';

@freezed
class PreviewModel with _$PreviewModel {
  const factory PreviewModel({
    @Default('') String content,
  }) = _PreviewModel;
  factory PreviewModel.fromJson(Map<String, dynamic> json) =>
      _$PreviewModelFromJson(json);
}
