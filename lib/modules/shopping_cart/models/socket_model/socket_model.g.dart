// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocketModel _$_$_SocketModelFromJson(Map<String, dynamic> json) {
  return _$_SocketModel(
    status: json['status'] as String,
    data: DataModel.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SocketModelToJson(_$_SocketModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': SocketModel._dataToJson(instance.data),
    };
