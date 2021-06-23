// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'Locations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationsModel _$LocationsModelFromJson(Map<String, dynamic> json) {
  return _LocationsModel.fromJson(json);
}

/// @nodoc
class _$LocationsModelTearOff {
  const _$LocationsModelTearOff();

  _LocationsModel call(
      {String status = '',
      @JsonKey(name: 'locations')
          List<LocationModel> locations = const <LocationModel>[]}) {
    return _LocationsModel(
      status: status,
      locations: locations,
    );
  }

  LocationsModel fromJson(Map<String, Object> json) {
    return LocationsModel.fromJson(json);
  }
}

/// @nodoc
const $LocationsModel = _$LocationsModelTearOff();

/// @nodoc
mixin _$LocationsModel {
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'locations')
  List<LocationModel> get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsModelCopyWith<LocationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsModelCopyWith<$Res> {
  factory $LocationsModelCopyWith(
          LocationsModel value, $Res Function(LocationsModel) then) =
      _$LocationsModelCopyWithImpl<$Res>;
  $Res call(
      {String status,
      @JsonKey(name: 'locations') List<LocationModel> locations});
}

/// @nodoc
class _$LocationsModelCopyWithImpl<$Res>
    implements $LocationsModelCopyWith<$Res> {
  _$LocationsModelCopyWithImpl(this._value, this._then);

  final LocationsModel _value;
  // ignore: unused_field
  final $Res Function(LocationsModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc
abstract class _$LocationsModelCopyWith<$Res>
    implements $LocationsModelCopyWith<$Res> {
  factory _$LocationsModelCopyWith(
          _LocationsModel value, $Res Function(_LocationsModel) then) =
      __$LocationsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      @JsonKey(name: 'locations') List<LocationModel> locations});
}

/// @nodoc
class __$LocationsModelCopyWithImpl<$Res>
    extends _$LocationsModelCopyWithImpl<$Res>
    implements _$LocationsModelCopyWith<$Res> {
  __$LocationsModelCopyWithImpl(
      _LocationsModel _value, $Res Function(_LocationsModel) _then)
      : super(_value, (v) => _then(v as _LocationsModel));

  @override
  _LocationsModel get _value => super._value as _LocationsModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? locations = freezed,
  }) {
    return _then(_LocationsModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationsModel
    with DiagnosticableTreeMixin
    implements _LocationsModel {
  const _$_LocationsModel(
      {this.status = '',
      @JsonKey(name: 'locations') this.locations = const <LocationModel>[]});

  factory _$_LocationsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationsModelFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String status;
  @override
  @JsonKey(name: 'locations')
  final List<LocationModel> locations;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationsModel(status: $status, locations: $locations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationsModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('locations', locations));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationsModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(locations);

  @JsonKey(ignore: true)
  @override
  _$LocationsModelCopyWith<_LocationsModel> get copyWith =>
      __$LocationsModelCopyWithImpl<_LocationsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationsModelToJson(this);
  }
}

abstract class _LocationsModel implements LocationsModel {
  const factory _LocationsModel(
          {String status,
          @JsonKey(name: 'locations') List<LocationModel> locations}) =
      _$_LocationsModel;

  factory _LocationsModel.fromJson(Map<String, dynamic> json) =
      _$_LocationsModel.fromJson;

  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'locations')
  List<LocationModel> get locations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationsModelCopyWith<_LocationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
