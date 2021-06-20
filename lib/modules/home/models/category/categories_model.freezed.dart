// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) {
  return _CategoriesModel.fromJson(json);
}

/// @nodoc
class _$CategoriesModelTearOff {
  const _$CategoriesModelTearOff();

  _CategoriesModel call({List<CategoryModel>? categories}) {
    return _CategoriesModel(
      categories: categories,
    );
  }

  CategoriesModel fromJson(Map<String, Object> json) {
    return CategoriesModel.fromJson(json);
  }
}

/// @nodoc
const $CategoriesModel = _$CategoriesModelTearOff();

/// @nodoc
mixin _$CategoriesModel {
  List<CategoryModel>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesModelCopyWith<CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesModelCopyWith<$Res> {
  factory $CategoriesModelCopyWith(
          CategoriesModel value, $Res Function(CategoriesModel) then) =
      _$CategoriesModelCopyWithImpl<$Res>;
  $Res call({List<CategoryModel>? categories});
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  final CategoriesModel _value;
  // ignore: unused_field
  final $Res Function(CategoriesModel) _then;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc
abstract class _$CategoriesModelCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$CategoriesModelCopyWith(
          _CategoriesModel value, $Res Function(_CategoriesModel) then) =
      __$CategoriesModelCopyWithImpl<$Res>;
  @override
  $Res call({List<CategoryModel>? categories});
}

/// @nodoc
class __$CategoriesModelCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res>
    implements _$CategoriesModelCopyWith<$Res> {
  __$CategoriesModelCopyWithImpl(
      _CategoriesModel _value, $Res Function(_CategoriesModel) _then)
      : super(_value, (v) => _then(v as _CategoriesModel));

  @override
  _CategoriesModel get _value => super._value as _CategoriesModel;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_CategoriesModel(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesModel
    with DiagnosticableTreeMixin
    implements _CategoriesModel {
  const _$_CategoriesModel({this.categories});

  factory _$_CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoriesModelFromJson(json);

  @override
  final List<CategoryModel>? categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesModel(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoriesModel'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoriesModel &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$CategoriesModelCopyWith<_CategoriesModel> get copyWith =>
      __$CategoriesModelCopyWithImpl<_CategoriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoriesModelToJson(this);
  }
}

abstract class _CategoriesModel implements CategoriesModel {
  const factory _CategoriesModel({List<CategoryModel>? categories}) =
      _$_CategoriesModel;

  factory _CategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_CategoriesModel.fromJson;

  @override
  List<CategoryModel>? get categories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoriesModelCopyWith<_CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
