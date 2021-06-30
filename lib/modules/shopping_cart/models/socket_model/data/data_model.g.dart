// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$_$_DataModelFromJson(Map<String, dynamic> json) {
  return _$_DataModel(
    socketUrl: json['socket_url'] as String,
    orderChannel: json['order_channel'] as String,
    orderEvent: json['order_event'] as String,
  );
}

Map<String, dynamic> _$_$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'socket_url': instance.socketUrl,
      'order_channel': instance.orderChannel,
      'order_event': instance.orderEvent,
    };
