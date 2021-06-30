// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'socket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocketModel _$SocketModelFromJson(Map<String, dynamic> json) {
  return _SocketModel.fromJson(json);
}

/// @nodoc
class _$SocketModelTearOff {
  const _$SocketModelTearOff();

  _SocketModel call(
      {@JsonKey(name: 'status') String status = '',
      @JsonKey(name: 'data', toJson: SocketModel._dataToJson) DataModel data =
          const DataModel(orderChannel: '', orderEvent: '', socketUrl: '')}) {
    return _SocketModel(
      status: status,
      data: data,
    );
  }

  SocketModel fromJson(Map<String, Object> json) {
    return SocketModel.fromJson(json);
  }
}

/// @nodoc
const $SocketModel = _$SocketModelTearOff();

/// @nodoc
mixin _$SocketModel {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data', toJson: SocketModel._dataToJson)
  DataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketModelCopyWith<SocketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketModelCopyWith<$Res> {
  factory $SocketModelCopyWith(
          SocketModel value, $Res Function(SocketModel) then) =
      _$SocketModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'data', toJson: SocketModel._dataToJson) DataModel data});

  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$SocketModelCopyWithImpl<$Res> implements $SocketModelCopyWith<$Res> {
  _$SocketModelCopyWithImpl(this._value, this._then);

  final SocketModel _value;
  // ignore: unused_field
  final $Res Function(SocketModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel,
    ));
  }

  @override
  $DataModelCopyWith<$Res> get data {
    return $DataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SocketModelCopyWith<$Res>
    implements $SocketModelCopyWith<$Res> {
  factory _$SocketModelCopyWith(
          _SocketModel value, $Res Function(_SocketModel) then) =
      __$SocketModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'data', toJson: SocketModel._dataToJson) DataModel data});

  @override
  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$SocketModelCopyWithImpl<$Res> extends _$SocketModelCopyWithImpl<$Res>
    implements _$SocketModelCopyWith<$Res> {
  __$SocketModelCopyWithImpl(
      _SocketModel _value, $Res Function(_SocketModel) _then)
      : super(_value, (v) => _then(v as _SocketModel));

  @override
  _SocketModel get _value => super._value as _SocketModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_SocketModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocketModel with DiagnosticableTreeMixin implements _SocketModel {
  const _$_SocketModel(
      {@JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'data', toJson: SocketModel._dataToJson) this.data =
          const DataModel(orderChannel: '', orderEvent: '', socketUrl: '')});

  factory _$_SocketModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SocketModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'data', toJson: SocketModel._dataToJson)
  final DataModel data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SocketModel(status: $status, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SocketModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SocketModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SocketModelCopyWith<_SocketModel> get copyWith =>
      __$SocketModelCopyWithImpl<_SocketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SocketModelToJson(this);
  }
}

abstract class _SocketModel implements SocketModel {
  const factory _SocketModel(
      {@JsonKey(name: 'status')
          String status,
      @JsonKey(name: 'data', toJson: SocketModel._dataToJson)
          DataModel data}) = _$_SocketModel;

  factory _SocketModel.fromJson(Map<String, dynamic> json) =
      _$_SocketModel.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'data', toJson: SocketModel._dataToJson)
  DataModel get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SocketModelCopyWith<_SocketModel> get copyWith =>
      throw _privateConstructorUsedError;
}
