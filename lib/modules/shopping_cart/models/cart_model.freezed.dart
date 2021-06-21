// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

/// @nodoc
class _$CartItemModelTearOff {
  const _$CartItemModelTearOff();

  _CartItemModel call(
      {int id = 0,
      int quantity = 0,
      double price = 0,
      String placeName = '',
      String itemName = '',
      String description = '',
      List<int> addOnsListOfIds = const [],
      List<int> withOutListOfIds = const []}) {
    return _CartItemModel(
      id: id,
      quantity: quantity,
      price: price,
      placeName: placeName,
      itemName: itemName,
      description: description,
      addOnsListOfIds: addOnsListOfIds,
      withOutListOfIds: withOutListOfIds,
    );
  }

  CartItemModel fromJson(Map<String, Object> json) {
    return CartItemModel.fromJson(json);
  }
}

/// @nodoc
const $CartItemModel = _$CartItemModelTearOff();

/// @nodoc
mixin _$CartItemModel {
  int get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<int> get addOnsListOfIds => throw _privateConstructorUsedError;
  List<int> get withOutListOfIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemModelCopyWith<CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemModelCopyWith<$Res> {
  factory $CartItemModelCopyWith(
          CartItemModel value, $Res Function(CartItemModel) then) =
      _$CartItemModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int quantity,
      double price,
      String placeName,
      String itemName,
      String description,
      List<int> addOnsListOfIds,
      List<int> withOutListOfIds});
}

/// @nodoc
class _$CartItemModelCopyWithImpl<$Res>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._value, this._then);

  final CartItemModel _value;
  // ignore: unused_field
  final $Res Function(CartItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? placeName = freezed,
    Object? itemName = freezed,
    Object? description = freezed,
    Object? addOnsListOfIds = freezed,
    Object? withOutListOfIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      addOnsListOfIds: addOnsListOfIds == freezed
          ? _value.addOnsListOfIds
          : addOnsListOfIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      withOutListOfIds: withOutListOfIds == freezed
          ? _value.withOutListOfIds
          : withOutListOfIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$CartItemModelCopyWith<$Res>
    implements $CartItemModelCopyWith<$Res> {
  factory _$CartItemModelCopyWith(
          _CartItemModel value, $Res Function(_CartItemModel) then) =
      __$CartItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int quantity,
      double price,
      String placeName,
      String itemName,
      String description,
      List<int> addOnsListOfIds,
      List<int> withOutListOfIds});
}

/// @nodoc
class __$CartItemModelCopyWithImpl<$Res>
    extends _$CartItemModelCopyWithImpl<$Res>
    implements _$CartItemModelCopyWith<$Res> {
  __$CartItemModelCopyWithImpl(
      _CartItemModel _value, $Res Function(_CartItemModel) _then)
      : super(_value, (v) => _then(v as _CartItemModel));

  @override
  _CartItemModel get _value => super._value as _CartItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? placeName = freezed,
    Object? itemName = freezed,
    Object? description = freezed,
    Object? addOnsListOfIds = freezed,
    Object? withOutListOfIds = freezed,
  }) {
    return _then(_CartItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      addOnsListOfIds: addOnsListOfIds == freezed
          ? _value.addOnsListOfIds
          : addOnsListOfIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      withOutListOfIds: withOutListOfIds == freezed
          ? _value.withOutListOfIds
          : withOutListOfIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItemModel with DiagnosticableTreeMixin implements _CartItemModel {
  const _$_CartItemModel(
      {this.id = 0,
      this.quantity = 0,
      this.price = 0,
      this.placeName = '',
      this.itemName = '',
      this.description = '',
      this.addOnsListOfIds = const [],
      this.withOutListOfIds = const []});

  factory _$_CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CartItemModelFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: 0)
  @override
  final int quantity;
  @JsonKey(defaultValue: 0)
  @override
  final double price;
  @JsonKey(defaultValue: '')
  @override
  final String placeName;
  @JsonKey(defaultValue: '')
  @override
  final String itemName;
  @JsonKey(defaultValue: '')
  @override
  final String description;
  @JsonKey(defaultValue: const [])
  @override
  final List<int> addOnsListOfIds;
  @JsonKey(defaultValue: const [])
  @override
  final List<int> withOutListOfIds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartItemModel(id: $id, quantity: $quantity, price: $price, placeName: $placeName, itemName: $itemName, description: $description, addOnsListOfIds: $addOnsListOfIds, withOutListOfIds: $withOutListOfIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartItemModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('placeName', placeName))
      ..add(DiagnosticsProperty('itemName', itemName))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('addOnsListOfIds', addOnsListOfIds))
      ..add(DiagnosticsProperty('withOutListOfIds', withOutListOfIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartItemModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.placeName, placeName) ||
                const DeepCollectionEquality()
                    .equals(other.placeName, placeName)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.addOnsListOfIds, addOnsListOfIds) ||
                const DeepCollectionEquality()
                    .equals(other.addOnsListOfIds, addOnsListOfIds)) &&
            (identical(other.withOutListOfIds, withOutListOfIds) ||
                const DeepCollectionEquality()
                    .equals(other.withOutListOfIds, withOutListOfIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(placeName) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(addOnsListOfIds) ^
      const DeepCollectionEquality().hash(withOutListOfIds);

  @JsonKey(ignore: true)
  @override
  _$CartItemModelCopyWith<_CartItemModel> get copyWith =>
      __$CartItemModelCopyWithImpl<_CartItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartItemModelToJson(this);
  }
}

abstract class _CartItemModel implements CartItemModel {
  const factory _CartItemModel(
      {int id,
      int quantity,
      double price,
      String placeName,
      String itemName,
      String description,
      List<int> addOnsListOfIds,
      List<int> withOutListOfIds}) = _$_CartItemModel;

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartItemModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String get placeName => throw _privateConstructorUsedError;
  @override
  String get itemName => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  List<int> get addOnsListOfIds => throw _privateConstructorUsedError;
  @override
  List<int> get withOutListOfIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartItemModelCopyWith<_CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
