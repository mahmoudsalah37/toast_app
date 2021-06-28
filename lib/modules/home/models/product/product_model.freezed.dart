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
      @JsonKey(name: 'meta')
          MetaModel metaModel = const MetaModel(),
      @JsonKey(name: 'price')
          PriceModel priceModel = const PriceModel(),
      @JsonKey(name: 'addons')
          List<AddonModel> addons = const <AddonModel>[],
      @JsonKey(name: 'withouts')
          List<WithoutModel> withouts = const <WithoutModel>[],
      @JsonKey(name: 'vars')
          List<VaraietyModel> varaieties = const <VaraietyModel>[],
      int quantity = 1,
      double totalAdds = 0,
      double totalPrice = 0}) {
    return _ProductModel(
      id: id,
      title: title,
      metaModel: metaModel,
      priceModel: priceModel,
      addons: addons,
      withouts: withouts,
      varaieties: varaieties,
      quantity: quantity,
      totalAdds: totalAdds,
      totalPrice: totalPrice,
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
  MetaModel get metaModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  PriceModel get priceModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'addons')
  List<AddonModel> get addons => throw _privateConstructorUsedError;
  @JsonKey(name: 'withouts')
  List<WithoutModel> get withouts => throw _privateConstructorUsedError;
  @JsonKey(name: 'vars')
  List<VaraietyModel> get varaieties => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get totalAdds => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'meta') MetaModel metaModel,
      @JsonKey(name: 'price') PriceModel priceModel,
      @JsonKey(name: 'addons') List<AddonModel> addons,
      @JsonKey(name: 'withouts') List<WithoutModel> withouts,
      @JsonKey(name: 'vars') List<VaraietyModel> varaieties,
      int quantity,
      double totalAdds,
      double totalPrice});

  $MetaModelCopyWith<$Res> get metaModel;
  $PriceModelCopyWith<$Res> get priceModel;
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
    Object? addons = freezed,
    Object? withouts = freezed,
    Object? varaieties = freezed,
    Object? quantity = freezed,
    Object? totalAdds = freezed,
    Object? totalPrice = freezed,
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
              as MetaModel,
      priceModel: priceModel == freezed
          ? _value.priceModel
          : priceModel // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      addons: addons == freezed
          ? _value.addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<AddonModel>,
      withouts: withouts == freezed
          ? _value.withouts
          : withouts // ignore: cast_nullable_to_non_nullable
              as List<WithoutModel>,
      varaieties: varaieties == freezed
          ? _value.varaieties
          : varaieties // ignore: cast_nullable_to_non_nullable
              as List<VaraietyModel>,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalAdds: totalAdds == freezed
          ? _value.totalAdds
          : totalAdds // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $MetaModelCopyWith<$Res> get metaModel {
    return $MetaModelCopyWith<$Res>(_value.metaModel, (value) {
      return _then(_value.copyWith(metaModel: value));
    });
  }

  @override
  $PriceModelCopyWith<$Res> get priceModel {
    return $PriceModelCopyWith<$Res>(_value.priceModel, (value) {
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
      @JsonKey(name: 'meta') MetaModel metaModel,
      @JsonKey(name: 'price') PriceModel priceModel,
      @JsonKey(name: 'addons') List<AddonModel> addons,
      @JsonKey(name: 'withouts') List<WithoutModel> withouts,
      @JsonKey(name: 'vars') List<VaraietyModel> varaieties,
      int quantity,
      double totalAdds,
      double totalPrice});

  @override
  $MetaModelCopyWith<$Res> get metaModel;
  @override
  $PriceModelCopyWith<$Res> get priceModel;
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
    Object? addons = freezed,
    Object? withouts = freezed,
    Object? varaieties = freezed,
    Object? quantity = freezed,
    Object? totalAdds = freezed,
    Object? totalPrice = freezed,
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
              as MetaModel,
      priceModel: priceModel == freezed
          ? _value.priceModel
          : priceModel // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      addons: addons == freezed
          ? _value.addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<AddonModel>,
      withouts: withouts == freezed
          ? _value.withouts
          : withouts // ignore: cast_nullable_to_non_nullable
              as List<WithoutModel>,
      varaieties: varaieties == freezed
          ? _value.varaieties
          : varaieties // ignore: cast_nullable_to_non_nullable
              as List<VaraietyModel>,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalAdds: totalAdds == freezed
          ? _value.totalAdds
          : totalAdds // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel with DiagnosticableTreeMixin implements _ProductModel {
  const _$_ProductModel(
      {this.id,
      this.title = '',
      @JsonKey(name: 'meta') this.metaModel = const MetaModel(),
      @JsonKey(name: 'price') this.priceModel = const PriceModel(),
      @JsonKey(name: 'addons') this.addons = const <AddonModel>[],
      @JsonKey(name: 'withouts') this.withouts = const <WithoutModel>[],
      @JsonKey(name: 'vars') this.varaieties = const <VaraietyModel>[],
      this.quantity = 1,
      this.totalAdds = 0,
      this.totalPrice = 0});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductModelFromJson(json);

  @override
  final int? id;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @override
  @JsonKey(name: 'meta')
  final MetaModel metaModel;
  @override
  @JsonKey(name: 'price')
  final PriceModel priceModel;
  @override
  @JsonKey(name: 'addons')
  final List<AddonModel> addons;
  @override
  @JsonKey(name: 'withouts')
  final List<WithoutModel> withouts;
  @override
  @JsonKey(name: 'vars')
  final List<VaraietyModel> varaieties;
  @JsonKey(defaultValue: 1)
  @override
  final int quantity;
  @JsonKey(defaultValue: 0)
  @override
  final double totalAdds;
  @JsonKey(defaultValue: 0)
  @override
  final double totalPrice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductModel(id: $id, title: $title, metaModel: $metaModel, priceModel: $priceModel, addons: $addons, withouts: $withouts, varaieties: $varaieties, quantity: $quantity, totalAdds: $totalAdds, totalPrice: $totalPrice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('metaModel', metaModel))
      ..add(DiagnosticsProperty('priceModel', priceModel))
      ..add(DiagnosticsProperty('addons', addons))
      ..add(DiagnosticsProperty('withouts', withouts))
      ..add(DiagnosticsProperty('varaieties', varaieties))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('totalAdds', totalAdds))
      ..add(DiagnosticsProperty('totalPrice', totalPrice));
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
                    .equals(other.priceModel, priceModel)) &&
            (identical(other.addons, addons) ||
                const DeepCollectionEquality().equals(other.addons, addons)) &&
            (identical(other.withouts, withouts) ||
                const DeepCollectionEquality()
                    .equals(other.withouts, withouts)) &&
            (identical(other.varaieties, varaieties) ||
                const DeepCollectionEquality()
                    .equals(other.varaieties, varaieties)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.totalAdds, totalAdds) ||
                const DeepCollectionEquality()
                    .equals(other.totalAdds, totalAdds)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(metaModel) ^
      const DeepCollectionEquality().hash(priceModel) ^
      const DeepCollectionEquality().hash(addons) ^
      const DeepCollectionEquality().hash(withouts) ^
      const DeepCollectionEquality().hash(varaieties) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(totalAdds) ^
      const DeepCollectionEquality().hash(totalPrice);

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
      @JsonKey(name: 'meta') MetaModel metaModel,
      @JsonKey(name: 'price') PriceModel priceModel,
      @JsonKey(name: 'addons') List<AddonModel> addons,
      @JsonKey(name: 'withouts') List<WithoutModel> withouts,
      @JsonKey(name: 'vars') List<VaraietyModel> varaieties,
      int quantity,
      double totalAdds,
      double totalPrice}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'meta')
  MetaModel get metaModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'price')
  PriceModel get priceModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'addons')
  List<AddonModel> get addons => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'withouts')
  List<WithoutModel> get withouts => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vars')
  List<VaraietyModel> get varaieties => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  double get totalAdds => throw _privateConstructorUsedError;
  @override
  double get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
