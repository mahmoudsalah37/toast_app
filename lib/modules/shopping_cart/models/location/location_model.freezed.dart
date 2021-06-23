// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
class _$LocationModelTearOff {
  const _$LocationModelTearOff();

  _LocationModel call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'name') String name = '',
      @JsonKey(name: 'street') String street = '',
      @JsonKey(name: 'building') String building = '',
      @JsonKey(name: 'apartment') String apartment = '',
      @JsonKey(name: 'longitude') double longitude = 0,
      @JsonKey(name: 'latitude') double latitude = 0}) {
    return _LocationModel(
      id: id,
      userId: userId,
      name: name,
      street: street,
      building: building,
      apartment: apartment,
      longitude: longitude,
      latitude: latitude,
    );
  }

  LocationModel fromJson(Map<String, Object> json) {
    return LocationModel.fromJson(json);
  }
}

/// @nodoc
const $LocationModel = _$LocationModelTearOff();

/// @nodoc
mixin _$LocationModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'street')
  String get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'building')
  String get building => throw _privateConstructorUsedError;
  @JsonKey(name: 'apartment')
  String get apartment => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'building') String building,
      @JsonKey(name: 'apartment') String apartment,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'latitude') double latitude});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  final LocationModel _value;
  // ignore: unused_field
  final $Res Function(LocationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? street = freezed,
    Object? building = freezed,
    Object? apartment = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$LocationModelCopyWith(
          _LocationModel value, $Res Function(_LocationModel) then) =
      __$LocationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'building') String building,
      @JsonKey(name: 'apartment') String apartment,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'latitude') double latitude});
}

/// @nodoc
class __$LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res>
    implements _$LocationModelCopyWith<$Res> {
  __$LocationModelCopyWithImpl(
      _LocationModel _value, $Res Function(_LocationModel) _then)
      : super(_value, (v) => _then(v as _LocationModel));

  @override
  _LocationModel get _value => super._value as _LocationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? street = freezed,
    Object? building = freezed,
    Object? apartment = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_LocationModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel with DiagnosticableTreeMixin implements _LocationModel {
  const _$_LocationModel(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'street') this.street = '',
      @JsonKey(name: 'building') this.building = '',
      @JsonKey(name: 'apartment') this.apartment = '',
      @JsonKey(name: 'longitude') this.longitude = 0,
      @JsonKey(name: 'latitude') this.latitude = 0});

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'street')
  final String street;
  @override
  @JsonKey(name: 'building')
  final String building;
  @override
  @JsonKey(name: 'apartment')
  final String apartment;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationModel(id: $id, userId: $userId, name: $name, street: $street, building: $building, apartment: $apartment, longitude: $longitude, latitude: $latitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('building', building))
      ..add(DiagnosticsProperty('apartment', apartment))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('latitude', latitude));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.building, building) ||
                const DeepCollectionEquality()
                    .equals(other.building, building)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(building) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude);

  @JsonKey(ignore: true)
  @override
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      __$LocationModelCopyWithImpl<_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationModelToJson(this);
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'building') String building,
      @JsonKey(name: 'apartment') String apartment,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'latitude') double latitude}) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'street')
  String get street => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'building')
  String get building => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'apartment')
  String get apartment => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
