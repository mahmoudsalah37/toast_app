// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
class _$DataModelTearOff {
  const _$DataModelTearOff();

  _DataModel call(
      {@JsonKey(name: 'socket_url') String socketUrl = '',
      @JsonKey(name: 'order_channel') String orderChannel = '',
      @JsonKey(name: 'order_event') String orderEvent = ''}) {
    return _DataModel(
      socketUrl: socketUrl,
      orderChannel: orderChannel,
      orderEvent: orderEvent,
    );
  }

  DataModel fromJson(Map<String, Object> json) {
    return DataModel.fromJson(json);
  }
}

/// @nodoc
const $DataModel = _$DataModelTearOff();

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: 'socket_url')
  String get socketUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_channel')
  String get orderChannel => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_event')
  String get orderEvent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'socket_url') String socketUrl,
      @JsonKey(name: 'order_channel') String orderChannel,
      @JsonKey(name: 'order_event') String orderEvent});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res> implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  final DataModel _value;
  // ignore: unused_field
  final $Res Function(DataModel) _then;

  @override
  $Res call({
    Object? socketUrl = freezed,
    Object? orderChannel = freezed,
    Object? orderEvent = freezed,
  }) {
    return _then(_value.copyWith(
      socketUrl: socketUrl == freezed
          ? _value.socketUrl
          : socketUrl // ignore: cast_nullable_to_non_nullable
              as String,
      orderChannel: orderChannel == freezed
          ? _value.orderChannel
          : orderChannel // ignore: cast_nullable_to_non_nullable
              as String,
      orderEvent: orderEvent == freezed
          ? _value.orderEvent
          : orderEvent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$DataModelCopyWith(
          _DataModel value, $Res Function(_DataModel) then) =
      __$DataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'socket_url') String socketUrl,
      @JsonKey(name: 'order_channel') String orderChannel,
      @JsonKey(name: 'order_event') String orderEvent});
}

/// @nodoc
class __$DataModelCopyWithImpl<$Res> extends _$DataModelCopyWithImpl<$Res>
    implements _$DataModelCopyWith<$Res> {
  __$DataModelCopyWithImpl(_DataModel _value, $Res Function(_DataModel) _then)
      : super(_value, (v) => _then(v as _DataModel));

  @override
  _DataModel get _value => super._value as _DataModel;

  @override
  $Res call({
    Object? socketUrl = freezed,
    Object? orderChannel = freezed,
    Object? orderEvent = freezed,
  }) {
    return _then(_DataModel(
      socketUrl: socketUrl == freezed
          ? _value.socketUrl
          : socketUrl // ignore: cast_nullable_to_non_nullable
              as String,
      orderChannel: orderChannel == freezed
          ? _value.orderChannel
          : orderChannel // ignore: cast_nullable_to_non_nullable
              as String,
      orderEvent: orderEvent == freezed
          ? _value.orderEvent
          : orderEvent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel with DiagnosticableTreeMixin implements _DataModel {
  const _$_DataModel(
      {@JsonKey(name: 'socket_url') this.socketUrl = '',
      @JsonKey(name: 'order_channel') this.orderChannel = '',
      @JsonKey(name: 'order_event') this.orderEvent = ''});

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DataModelFromJson(json);

  @override
  @JsonKey(name: 'socket_url')
  final String socketUrl;
  @override
  @JsonKey(name: 'order_channel')
  final String orderChannel;
  @override
  @JsonKey(name: 'order_event')
  final String orderEvent;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataModel(socketUrl: $socketUrl, orderChannel: $orderChannel, orderEvent: $orderEvent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataModel'))
      ..add(DiagnosticsProperty('socketUrl', socketUrl))
      ..add(DiagnosticsProperty('orderChannel', orderChannel))
      ..add(DiagnosticsProperty('orderEvent', orderEvent));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataModel &&
            (identical(other.socketUrl, socketUrl) ||
                const DeepCollectionEquality()
                    .equals(other.socketUrl, socketUrl)) &&
            (identical(other.orderChannel, orderChannel) ||
                const DeepCollectionEquality()
                    .equals(other.orderChannel, orderChannel)) &&
            (identical(other.orderEvent, orderEvent) ||
                const DeepCollectionEquality()
                    .equals(other.orderEvent, orderEvent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(socketUrl) ^
      const DeepCollectionEquality().hash(orderChannel) ^
      const DeepCollectionEquality().hash(orderEvent);

  @JsonKey(ignore: true)
  @override
  _$DataModelCopyWith<_DataModel> get copyWith =>
      __$DataModelCopyWithImpl<_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DataModelToJson(this);
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel(
      {@JsonKey(name: 'socket_url') String socketUrl,
      @JsonKey(name: 'order_channel') String orderChannel,
      @JsonKey(name: 'order_event') String orderEvent}) = _$_DataModel;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  @JsonKey(name: 'socket_url')
  String get socketUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'order_channel')
  String get orderChannel => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'order_event')
  String get orderEvent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataModelCopyWith<_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
