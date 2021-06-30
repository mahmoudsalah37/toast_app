import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
    @Default('') @JsonKey(name: 'socket_url') String socketUrl,
    @Default('') @JsonKey(name: 'order_channel') String orderChannel,
    @Default('') @JsonKey(name: 'order_event') String orderEvent,
  }) = _DataModel;
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
