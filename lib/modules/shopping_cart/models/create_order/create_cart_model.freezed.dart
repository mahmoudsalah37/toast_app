// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateOrderModel _$CreateOrderModelFromJson(Map<String, dynamic> json) {
  return _CreateOrderModel.fromJson(json);
}

/// @nodoc
class _$CreateOrderModelTearOff {
  const _$CreateOrderModelTearOff();

  _CreateOrderModel call(
      {@JsonKey(name: 'vendor_id') int companyId = 0,
      @JsonKey(name: 'user_id') int userId = 0,
      @JsonKey(name: 'user_location_id') int selectedLocationId = 0,
      @JsonKey(name: 'sub_total') double subTotal = 0,
      @JsonKey(name: 'discount') double discount = 0,
      @JsonKey(name: 'vat') double vat = 0,
      @JsonKey(name: 'type') String orderType = '',
      @JsonKey(name: 'cart') List<ProductModel> cartItemsList = const []}) {
    return _CreateOrderModel(
      companyId: companyId,
      userId: userId,
      selectedLocationId: selectedLocationId,
      subTotal: subTotal,
      discount: discount,
      vat: vat,
      orderType: orderType,
      cartItemsList: cartItemsList,
    );
  }

  CreateOrderModel fromJson(Map<String, Object> json) {
    return CreateOrderModel.fromJson(json);
  }
}

/// @nodoc
const $CreateOrderModel = _$CreateOrderModelTearOff();

/// @nodoc
mixin _$CreateOrderModel {
  @JsonKey(name: 'vendor_id')
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_location_id')
  int get selectedLocationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  double get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat')
  double get vat => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart')
  List<ProductModel> get cartItemsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderModelCopyWith<CreateOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderModelCopyWith<$Res> {
  factory $CreateOrderModelCopyWith(
          CreateOrderModel value, $Res Function(CreateOrderModel) then) =
      _$CreateOrderModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'vendor_id') int companyId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'user_location_id') int selectedLocationId,
      @JsonKey(name: 'sub_total') double subTotal,
      @JsonKey(name: 'discount') double discount,
      @JsonKey(name: 'vat') double vat,
      @JsonKey(name: 'type') String orderType,
      @JsonKey(name: 'cart') List<ProductModel> cartItemsList});
}

/// @nodoc
class _$CreateOrderModelCopyWithImpl<$Res>
    implements $CreateOrderModelCopyWith<$Res> {
  _$CreateOrderModelCopyWithImpl(this._value, this._then);

  final CreateOrderModel _value;
  // ignore: unused_field
  final $Res Function(CreateOrderModel) _then;

  @override
  $Res call({
    Object? companyId = freezed,
    Object? userId = freezed,
    Object? selectedLocationId = freezed,
    Object? subTotal = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? orderType = freezed,
    Object? cartItemsList = freezed,
  }) {
    return _then(_value.copyWith(
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedLocationId: selectedLocationId == freezed
          ? _value.selectedLocationId
          : selectedLocationId // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      cartItemsList: cartItemsList == freezed
          ? _value.cartItemsList
          : cartItemsList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
abstract class _$CreateOrderModelCopyWith<$Res>
    implements $CreateOrderModelCopyWith<$Res> {
  factory _$CreateOrderModelCopyWith(
          _CreateOrderModel value, $Res Function(_CreateOrderModel) then) =
      __$CreateOrderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'vendor_id') int companyId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'user_location_id') int selectedLocationId,
      @JsonKey(name: 'sub_total') double subTotal,
      @JsonKey(name: 'discount') double discount,
      @JsonKey(name: 'vat') double vat,
      @JsonKey(name: 'type') String orderType,
      @JsonKey(name: 'cart') List<ProductModel> cartItemsList});
}

/// @nodoc
class __$CreateOrderModelCopyWithImpl<$Res>
    extends _$CreateOrderModelCopyWithImpl<$Res>
    implements _$CreateOrderModelCopyWith<$Res> {
  __$CreateOrderModelCopyWithImpl(
      _CreateOrderModel _value, $Res Function(_CreateOrderModel) _then)
      : super(_value, (v) => _then(v as _CreateOrderModel));

  @override
  _CreateOrderModel get _value => super._value as _CreateOrderModel;

  @override
  $Res call({
    Object? companyId = freezed,
    Object? userId = freezed,
    Object? selectedLocationId = freezed,
    Object? subTotal = freezed,
    Object? discount = freezed,
    Object? vat = freezed,
    Object? orderType = freezed,
    Object? cartItemsList = freezed,
  }) {
    return _then(_CreateOrderModel(
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedLocationId: selectedLocationId == freezed
          ? _value.selectedLocationId
          : selectedLocationId // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      cartItemsList: cartItemsList == freezed
          ? _value.cartItemsList
          : cartItemsList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateOrderModel
    with DiagnosticableTreeMixin
    implements _CreateOrderModel {
  const _$_CreateOrderModel(
      {@JsonKey(name: 'vendor_id') this.companyId = 0,
      @JsonKey(name: 'user_id') this.userId = 0,
      @JsonKey(name: 'user_location_id') this.selectedLocationId = 0,
      @JsonKey(name: 'sub_total') this.subTotal = 0,
      @JsonKey(name: 'discount') this.discount = 0,
      @JsonKey(name: 'vat') this.vat = 0,
      @JsonKey(name: 'type') this.orderType = '',
      @JsonKey(name: 'cart') this.cartItemsList = const []});

  factory _$_CreateOrderModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateOrderModelFromJson(json);

  @override
  @JsonKey(name: 'vendor_id')
  final int companyId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'user_location_id')
  final int selectedLocationId;
  @override
  @JsonKey(name: 'sub_total')
  final double subTotal;
  @override
  @JsonKey(name: 'discount')
  final double discount;
  @override
  @JsonKey(name: 'vat')
  final double vat;
  @override
  @JsonKey(name: 'type')
  final String orderType;
  @override
  @JsonKey(name: 'cart')
  final List<ProductModel> cartItemsList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateOrderModel(companyId: $companyId, userId: $userId, selectedLocationId: $selectedLocationId, subTotal: $subTotal, discount: $discount, vat: $vat, orderType: $orderType, cartItemsList: $cartItemsList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateOrderModel'))
      ..add(DiagnosticsProperty('companyId', companyId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('selectedLocationId', selectedLocationId))
      ..add(DiagnosticsProperty('subTotal', subTotal))
      ..add(DiagnosticsProperty('discount', discount))
      ..add(DiagnosticsProperty('vat', vat))
      ..add(DiagnosticsProperty('orderType', orderType))
      ..add(DiagnosticsProperty('cartItemsList', cartItemsList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateOrderModel &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.selectedLocationId, selectedLocationId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedLocationId, selectedLocationId)) &&
            (identical(other.subTotal, subTotal) ||
                const DeepCollectionEquality()
                    .equals(other.subTotal, subTotal)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.cartItemsList, cartItemsList) ||
                const DeepCollectionEquality()
                    .equals(other.cartItemsList, cartItemsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(selectedLocationId) ^
      const DeepCollectionEquality().hash(subTotal) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(cartItemsList);

  @JsonKey(ignore: true)
  @override
  _$CreateOrderModelCopyWith<_CreateOrderModel> get copyWith =>
      __$CreateOrderModelCopyWithImpl<_CreateOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateOrderModelToJson(this);
  }
}

abstract class _CreateOrderModel implements CreateOrderModel {
  const factory _CreateOrderModel(
          {@JsonKey(name: 'vendor_id') int companyId,
          @JsonKey(name: 'user_id') int userId,
          @JsonKey(name: 'user_location_id') int selectedLocationId,
          @JsonKey(name: 'sub_total') double subTotal,
          @JsonKey(name: 'discount') double discount,
          @JsonKey(name: 'vat') double vat,
          @JsonKey(name: 'type') String orderType,
          @JsonKey(name: 'cart') List<ProductModel> cartItemsList}) =
      _$_CreateOrderModel;

  factory _CreateOrderModel.fromJson(Map<String, dynamic> json) =
      _$_CreateOrderModel.fromJson;

  @override
  @JsonKey(name: 'vendor_id')
  int get companyId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_location_id')
  int get selectedLocationId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sub_total')
  double get subTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'discount')
  double get discount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vat')
  double get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'type')
  String get orderType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cart')
  List<ProductModel> get cartItemsList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateOrderModelCopyWith<_CreateOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
