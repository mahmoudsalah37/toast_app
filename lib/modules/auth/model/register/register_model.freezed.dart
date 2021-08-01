// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
class _$RegisterModelTearOff {
  const _$RegisterModelTearOff();

  _RegisterModel call(
      {@JsonKey(name: 'first_name') String firstName = '',
      @JsonKey(name: 'last_name') String lastName = '',
      @JsonKey(name: 'email') String email = '',
      @JsonKey(name: 'password') String password = '',
      @JsonKey(name: 'phone') String phone = ''}) {
    return _RegisterModel(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      phone: phone,
    );
  }

  RegisterModel fromJson(Map<String, Object> json) {
    return RegisterModel.fromJson(json);
  }
}

/// @nodoc
const $RegisterModel = _$RegisterModelTearOff();

/// @nodoc
mixin _$RegisterModel {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'phone') String phone});
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  final RegisterModel _value;
  // ignore: unused_field
  final $Res Function(RegisterModel) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterModelCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$RegisterModelCopyWith(
          _RegisterModel value, $Res Function(_RegisterModel) then) =
      __$RegisterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'phone') String phone});
}

/// @nodoc
class __$RegisterModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res>
    implements _$RegisterModelCopyWith<$Res> {
  __$RegisterModelCopyWithImpl(
      _RegisterModel _value, $Res Function(_RegisterModel) _then)
      : super(_value, (v) => _then(v as _RegisterModel));

  @override
  _RegisterModel get _value => super._value as _RegisterModel;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
  }) {
    return _then(_RegisterModel(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModel implements _RegisterModel {
  const _$_RegisterModel(
      {@JsonKey(name: 'first_name') this.firstName = '',
      @JsonKey(name: 'last_name') this.lastName = '',
      @JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'password') this.password = '',
      @JsonKey(name: 'phone') this.phone = ''});

  factory _$_RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisterModelFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'phone')
  final String phone;

  @override
  String toString() {
    return 'RegisterModel(firstName: $firstName, lastName: $lastName, email: $email, password: $password, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterModel &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$RegisterModelCopyWith<_RegisterModel> get copyWith =>
      __$RegisterModelCopyWithImpl<_RegisterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisterModelToJson(this);
  }
}

abstract class _RegisterModel implements RegisterModel {
  const factory _RegisterModel(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'phone') String phone}) = _$_RegisterModel;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterModel.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterModelCopyWith<_RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
