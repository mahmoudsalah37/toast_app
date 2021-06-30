import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

import 'data/data_model.dart';

part 'socket_model.freezed.dart';
part 'socket_model.g.dart';

@freezed
class SocketModel with _$SocketModel {
  const factory SocketModel({
    @Default('') @JsonKey(name: 'status') String status,
    @Default(const DataModel(orderChannel: '', orderEvent: '', socketUrl: ''))
    @JsonKey(name: 'data', toJson: SocketModel._dataToJson)
        DataModel data,
  }) = _SocketModel;
  factory SocketModel.fromJson(Map<String, dynamic> json) =>
      _$SocketModelFromJson(json);
  static Map<String, dynamic> _dataToJson(DataModel data) {
    return data.toJson();
  }
}
