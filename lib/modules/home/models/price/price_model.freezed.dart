// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceModel _$PriceModelFromJson(Map<String, dynamic> json) {
  return _PriceModel.fromJson(json);
}

/// @nodoc
class _$PriceModelTearOff {
  const _$PriceModelTearOff();

  _PriceModel call({double price = 0.0}) {
    return _PriceModel(
      price: price,
    );
  }

  PriceModel fromJson(Map<String, Object> json) {
    return PriceModel.fromJson(json);
  }
}

/// @nodoc
const $PriceModel = _$PriceModelTearOff();

/// @nodoc
mixin _$PriceModel {
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceModelCopyWith<PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceModelCopyWith<$Res> {
  factory $PriceModelCopyWith(
          PriceModel value, $Res Function(PriceModel) then) =
      _$PriceModelCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class _$PriceModelCopyWithImpl<$Res> implements $PriceModelCopyWith<$Res> {
  _$PriceModelCopyWithImpl(this._value, this._then);

  final PriceModel _value;
  // ignore: unused_field
  final $Res Function(PriceModel) _then;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PriceModelCopyWith<$Res> implements $PriceModelCopyWith<$Res> {
  factory _$PriceModelCopyWith(
          _PriceModel value, $Res Function(_PriceModel) then) =
      __$PriceModelCopyWithImpl<$Res>;
  @override
  $Res call({double price});
}

/// @nodoc
class __$PriceModelCopyWithImpl<$Res> extends _$PriceModelCopyWithImpl<$Res>
    implements _$PriceModelCopyWith<$Res> {
  __$PriceModelCopyWithImpl(
      _PriceModel _value, $Res Function(_PriceModel) _then)
      : super(_value, (v) => _then(v as _PriceModel));

  @override
  _PriceModel get _value => super._value as _PriceModel;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_PriceModel(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceModel with DiagnosticableTreeMixin implements _PriceModel {
  const _$_PriceModel({this.price = 0.0});

  factory _$_PriceModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PriceModelFromJson(json);

  @JsonKey(defaultValue: 0.0)
  @override
  final double price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceModel(price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceModel'))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceModel &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$PriceModelCopyWith<_PriceModel> get copyWith =>
      __$PriceModelCopyWithImpl<_PriceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PriceModelToJson(this);
  }
}

abstract class _PriceModel implements PriceModel {
  const factory _PriceModel({double price}) = _$_PriceModel;

  factory _PriceModel.fromJson(Map<String, dynamic> json) =
      _$_PriceModel.fromJson;

  @override
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PriceModelCopyWith<_PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
