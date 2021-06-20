// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'addon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddonModel _$AddonModelFromJson(Map<String, dynamic> json) {
  return _AddonModel.fromJson(json);
}

/// @nodoc
class _$AddonModelTearOff {
  const _$AddonModelTearOff();

  _AddonModel call(
      {int? id,
      String title = '',
      @JsonKey() PriceModel price = const PriceModel()}) {
    return _AddonModel(
      id: id,
      title: title,
      price: price,
    );
  }

  AddonModel fromJson(Map<String, Object> json) {
    return AddonModel.fromJson(json);
  }
}

/// @nodoc
const $AddonModel = _$AddonModelTearOff();

/// @nodoc
mixin _$AddonModel {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey()
  PriceModel get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddonModelCopyWith<AddonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonModelCopyWith<$Res> {
  factory $AddonModelCopyWith(
          AddonModel value, $Res Function(AddonModel) then) =
      _$AddonModelCopyWithImpl<$Res>;
  $Res call({int? id, String title, @JsonKey() PriceModel price});

  $PriceModelCopyWith<$Res> get price;
}

/// @nodoc
class _$AddonModelCopyWithImpl<$Res> implements $AddonModelCopyWith<$Res> {
  _$AddonModelCopyWithImpl(this._value, this._then);

  final AddonModel _value;
  // ignore: unused_field
  final $Res Function(AddonModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel,
    ));
  }

  @override
  $PriceModelCopyWith<$Res> get price {
    return $PriceModelCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc
abstract class _$AddonModelCopyWith<$Res> implements $AddonModelCopyWith<$Res> {
  factory _$AddonModelCopyWith(
          _AddonModel value, $Res Function(_AddonModel) then) =
      __$AddonModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String title, @JsonKey() PriceModel price});

  @override
  $PriceModelCopyWith<$Res> get price;
}

/// @nodoc
class __$AddonModelCopyWithImpl<$Res> extends _$AddonModelCopyWithImpl<$Res>
    implements _$AddonModelCopyWith<$Res> {
  __$AddonModelCopyWithImpl(
      _AddonModel _value, $Res Function(_AddonModel) _then)
      : super(_value, (v) => _then(v as _AddonModel));

  @override
  _AddonModel get _value => super._value as _AddonModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
  }) {
    return _then(_AddonModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddonModel with DiagnosticableTreeMixin implements _AddonModel {
  const _$_AddonModel(
      {this.id, this.title = '', @JsonKey() this.price = const PriceModel()});

  factory _$_AddonModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AddonModelFromJson(json);

  @override
  final int? id;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @override
  @JsonKey()
  final PriceModel price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddonModel(id: $id, title: $title, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddonModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddonModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$AddonModelCopyWith<_AddonModel> get copyWith =>
      __$AddonModelCopyWithImpl<_AddonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddonModelToJson(this);
  }
}

abstract class _AddonModel implements AddonModel {
  const factory _AddonModel(
      {int? id, String title, @JsonKey() PriceModel price}) = _$_AddonModel;

  factory _AddonModel.fromJson(Map<String, dynamic> json) =
      _$_AddonModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey()
  PriceModel get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddonModelCopyWith<_AddonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
