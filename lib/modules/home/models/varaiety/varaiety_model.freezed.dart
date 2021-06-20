// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'varaiety_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VaraietyModel _$VaraietyModelFromJson(Map<String, dynamic> json) {
  return _VaraietyModel.fromJson(json);
}

/// @nodoc
class _$VaraietyModelTearOff {
  const _$VaraietyModelTearOff();

  _VaraietyModel call(
      {@JsonKey(name: 'term_id') int? termId,
      String variety = '',
      double price = 0.0}) {
    return _VaraietyModel(
      termId: termId,
      variety: variety,
      price: price,
    );
  }

  VaraietyModel fromJson(Map<String, Object> json) {
    return VaraietyModel.fromJson(json);
  }
}

/// @nodoc
const $VaraietyModel = _$VaraietyModelTearOff();

/// @nodoc
mixin _$VaraietyModel {
  @JsonKey(name: 'term_id')
  int? get termId => throw _privateConstructorUsedError;
  String get variety => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaraietyModelCopyWith<VaraietyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaraietyModelCopyWith<$Res> {
  factory $VaraietyModelCopyWith(
          VaraietyModel value, $Res Function(VaraietyModel) then) =
      _$VaraietyModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'term_id') int? termId, String variety, double price});
}

/// @nodoc
class _$VaraietyModelCopyWithImpl<$Res>
    implements $VaraietyModelCopyWith<$Res> {
  _$VaraietyModelCopyWithImpl(this._value, this._then);

  final VaraietyModel _value;
  // ignore: unused_field
  final $Res Function(VaraietyModel) _then;

  @override
  $Res call({
    Object? termId = freezed,
    Object? variety = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as int?,
      variety: variety == freezed
          ? _value.variety
          : variety // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$VaraietyModelCopyWith<$Res>
    implements $VaraietyModelCopyWith<$Res> {
  factory _$VaraietyModelCopyWith(
          _VaraietyModel value, $Res Function(_VaraietyModel) then) =
      __$VaraietyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'term_id') int? termId, String variety, double price});
}

/// @nodoc
class __$VaraietyModelCopyWithImpl<$Res>
    extends _$VaraietyModelCopyWithImpl<$Res>
    implements _$VaraietyModelCopyWith<$Res> {
  __$VaraietyModelCopyWithImpl(
      _VaraietyModel _value, $Res Function(_VaraietyModel) _then)
      : super(_value, (v) => _then(v as _VaraietyModel));

  @override
  _VaraietyModel get _value => super._value as _VaraietyModel;

  @override
  $Res call({
    Object? termId = freezed,
    Object? variety = freezed,
    Object? price = freezed,
  }) {
    return _then(_VaraietyModel(
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as int?,
      variety: variety == freezed
          ? _value.variety
          : variety // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaraietyModel with DiagnosticableTreeMixin implements _VaraietyModel {
  const _$_VaraietyModel(
      {@JsonKey(name: 'term_id') this.termId,
      this.variety = '',
      this.price = 0.0});

  factory _$_VaraietyModel.fromJson(Map<String, dynamic> json) =>
      _$_$_VaraietyModelFromJson(json);

  @override
  @JsonKey(name: 'term_id')
  final int? termId;
  @JsonKey(defaultValue: '')
  @override
  final String variety;
  @JsonKey(defaultValue: 0.0)
  @override
  final double price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VaraietyModel(termId: $termId, variety: $variety, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VaraietyModel'))
      ..add(DiagnosticsProperty('termId', termId))
      ..add(DiagnosticsProperty('variety', variety))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaraietyModel &&
            (identical(other.termId, termId) ||
                const DeepCollectionEquality().equals(other.termId, termId)) &&
            (identical(other.variety, variety) ||
                const DeepCollectionEquality()
                    .equals(other.variety, variety)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(termId) ^
      const DeepCollectionEquality().hash(variety) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$VaraietyModelCopyWith<_VaraietyModel> get copyWith =>
      __$VaraietyModelCopyWithImpl<_VaraietyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VaraietyModelToJson(this);
  }
}

abstract class _VaraietyModel implements VaraietyModel {
  const factory _VaraietyModel(
      {@JsonKey(name: 'term_id') int? termId,
      String variety,
      double price}) = _$_VaraietyModel;

  factory _VaraietyModel.fromJson(Map<String, dynamic> json) =
      _$_VaraietyModel.fromJson;

  @override
  @JsonKey(name: 'term_id')
  int? get termId => throw _privateConstructorUsedError;
  @override
  String get variety => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VaraietyModelCopyWith<_VaraietyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
