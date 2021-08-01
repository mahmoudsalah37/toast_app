// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$_$_RegisterModelFromJson(Map<String, dynamic> json) {
  return _$_RegisterModel(
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$_$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
    };
