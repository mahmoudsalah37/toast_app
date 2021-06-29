// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'place_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceOrderModel _$PlaceOrderModelFromJson(Map<String, dynamic> json) {
  return _PlaceOrderModel.fromJson(json);
}

/// @nodoc
class _$PlaceOrderModelTearOff {
  const _$PlaceOrderModelTearOff();

  _PlaceOrderModel call(
      {@JsonKey(name: 'order_id') int orderId = 0,
      @JsonKey(name: 'driver_id') int driverId = 0,
      @JsonKey(name: 'delivery_fees') double deliveryFees = 0}) {
    return _PlaceOrderModel(
      orderId: orderId,
      driverId: driverId,
      deliveryFees: deliveryFees,
    );
  }

  PlaceOrderModel fromJson(Map<String, Object> json) {
    return PlaceOrderModel.fromJson(json);
  }
}

/// @nodoc
const $PlaceOrderModel = _$PlaceOrderModelTearOff();

/// @nodoc
mixin _$PlaceOrderModel {
  @JsonKey(name: 'order_id')
  int get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  int get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_fees')
  double get deliveryFees => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderModelCopyWith<PlaceOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderModelCopyWith<$Res> {
  factory $PlaceOrderModelCopyWith(
          PlaceOrderModel value, $Res Function(PlaceOrderModel) then) =
      _$PlaceOrderModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'driver_id') int driverId,
      @JsonKey(name: 'delivery_fees') double deliveryFees});
}

/// @nodoc
class _$PlaceOrderModelCopyWithImpl<$Res>
    implements $PlaceOrderModelCopyWith<$Res> {
  _$PlaceOrderModelCopyWithImpl(this._value, this._then);

  final PlaceOrderModel _value;
  // ignore: unused_field
  final $Res Function(PlaceOrderModel) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? driverId = freezed,
    Object? deliveryFees = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryFees: deliveryFees == freezed
          ? _value.deliveryFees
          : deliveryFees // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PlaceOrderModelCopyWith<$Res>
    implements $PlaceOrderModelCopyWith<$Res> {
  factory _$PlaceOrderModelCopyWith(
          _PlaceOrderModel value, $Res Function(_PlaceOrderModel) then) =
      __$PlaceOrderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'driver_id') int driverId,
      @JsonKey(name: 'delivery_fees') double deliveryFees});
}

/// @nodoc
class __$PlaceOrderModelCopyWithImpl<$Res>
    extends _$PlaceOrderModelCopyWithImpl<$Res>
    implements _$PlaceOrderModelCopyWith<$Res> {
  __$PlaceOrderModelCopyWithImpl(
      _PlaceOrderModel _value, $Res Function(_PlaceOrderModel) _then)
      : super(_value, (v) => _then(v as _PlaceOrderModel));

  @override
  _PlaceOrderModel get _value => super._value as _PlaceOrderModel;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? driverId = freezed,
    Object? deliveryFees = freezed,
  }) {
    return _then(_PlaceOrderModel(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryFees: deliveryFees == freezed
          ? _value.deliveryFees
          : deliveryFees // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceOrderModel implements _PlaceOrderModel {
  const _$_PlaceOrderModel(
      {@JsonKey(name: 'order_id') this.orderId = 0,
      @JsonKey(name: 'driver_id') this.driverId = 0,
      @JsonKey(name: 'delivery_fees') this.deliveryFees = 0});

  factory _$_PlaceOrderModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaceOrderModelFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final int orderId;
  @override
  @JsonKey(name: 'driver_id')
  final int driverId;
  @override
  @JsonKey(name: 'delivery_fees')
  final double deliveryFees;

  @override
  String toString() {
    return 'PlaceOrderModel(orderId: $orderId, driverId: $driverId, deliveryFees: $deliveryFees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOrderModel &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.deliveryFees, deliveryFees) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryFees, deliveryFees)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(deliveryFees);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderModelCopyWith<_PlaceOrderModel> get copyWith =>
      __$PlaceOrderModelCopyWithImpl<_PlaceOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlaceOrderModelToJson(this);
  }
}

abstract class _PlaceOrderModel implements PlaceOrderModel {
  const factory _PlaceOrderModel(
          {@JsonKey(name: 'order_id') int orderId,
          @JsonKey(name: 'driver_id') int driverId,
          @JsonKey(name: 'delivery_fees') double deliveryFees}) =
      _$_PlaceOrderModel;

  factory _PlaceOrderModel.fromJson(Map<String, dynamic> json) =
      _$_PlaceOrderModel.fromJson;

  @override
  @JsonKey(name: 'order_id')
  int get orderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_id')
  int get driverId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_fees')
  double get deliveryFees => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceOrderModelCopyWith<_PlaceOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
