// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

  _ProductModel call(
      {int? id,
      String title = '',
      @JsonKey(name: 'meta') MetaModel? metaModel,
      @JsonKey(name: 'price') PriceModel? priceModel}) {
    return _ProductModel(
      id: id,
      title: title,
      metaModel: metaModel,
      priceModel: priceModel,
    );
  }

  ProductModel fromJson(Map<String, Object> json) {
    return ProductModel.fromJson(json);
  }
}

/// @nodoc
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  MetaModel? get metaModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  PriceModel? get priceModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String title,
      @JsonKey(name: 'meta') MetaModel? metaModel,
      @JsonKey(name: 'price') PriceModel? priceModel});

  $MetaModelCopyWith<$Res>? get metaModel;
  $PriceModelCopyWith<$Res>? get priceModel;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? metaModel = freezed,
    Object? priceModel = freezed,
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
      metaModel: metaModel == freezed
          ? _value.metaModel
          : metaModel // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
      priceModel: priceModel == freezed
          ? _value.priceModel
          : priceModel // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
    ));
  }

  @override
  $MetaModelCopyWith<$Res>? get metaModel {
    if (_value.metaModel == null) {
      return null;
    }

    return $MetaModelCopyWith<$Res>(_value.metaModel!, (value) {
      return _then(_value.copyWith(metaModel: value));
    });
  }

  @override
  $PriceModelCopyWith<$Res>? get priceModel {
    if (_value.priceModel == null) {
      return null;
    }

    return $PriceModelCopyWith<$Res>(_value.priceModel!, (value) {
      return _then(_value.copyWith(priceModel: value));
    });
  }
}

/// @nodoc
abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String title,
      @JsonKey(name: 'meta') MetaModel? metaModel,
      @JsonKey(name: 'price') PriceModel? priceModel});

  @override
  $MetaModelCopyWith<$Res>? get metaModel;
  @override
  $PriceModelCopyWith<$Res>? get priceModel;
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? metaModel = freezed,
    Object? priceModel = freezed,
  }) {
    return _then(_ProductModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      metaModel: metaModel == freezed
          ? _value.metaModel
          : metaModel // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
      priceModel: priceModel == freezed
          ? _value.priceModel
          : priceModel // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel with DiagnosticableTreeMixin implements _ProductModel {
  const _$_ProductModel(
      {this.id,
      this.title = '',
      @JsonKey(name: 'meta') this.metaModel,
      @JsonKey(name: 'price') this.priceModel});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductModelFromJson(json);

  @override
  final int? id;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @override
  @JsonKey(name: 'meta')
  final MetaModel? metaModel;
  @override
  @JsonKey(name: 'price')
  final PriceModel? priceModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductModel(id: $id, title: $title, metaModel: $metaModel, priceModel: $priceModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('metaModel', metaModel))
      ..add(DiagnosticsProperty('priceModel', priceModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.metaModel, metaModel) ||
                const DeepCollectionEquality()
                    .equals(other.metaModel, metaModel)) &&
            (identical(other.priceModel, priceModel) ||
                const DeepCollectionEquality()
                    .equals(other.priceModel, priceModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(metaModel) ^
      const DeepCollectionEquality().hash(priceModel);

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductModelToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {int? id,
      String title,
      @JsonKey(name: 'meta') MetaModel? metaModel,
      @JsonKey(name: 'price') PriceModel? priceModel}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'meta')
  MetaModel? get metaModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'price')
  PriceModel? get priceModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
