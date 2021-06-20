// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'without_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WithoutModel _$WithoutModelFromJson(Map<String, dynamic> json) {
  return _WithoutModel.fromJson(json);
}

/// @nodoc
class _$WithoutModelTearOff {
  const _$WithoutModelTearOff();

  _WithoutModel call({int? id, String title = ''}) {
    return _WithoutModel(
      id: id,
      title: title,
    );
  }

  WithoutModel fromJson(Map<String, Object> json) {
    return WithoutModel.fromJson(json);
  }
}

/// @nodoc
const $WithoutModel = _$WithoutModelTearOff();

/// @nodoc
mixin _$WithoutModel {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithoutModelCopyWith<WithoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithoutModelCopyWith<$Res> {
  factory $WithoutModelCopyWith(
          WithoutModel value, $Res Function(WithoutModel) then) =
      _$WithoutModelCopyWithImpl<$Res>;
  $Res call({int? id, String title});
}

/// @nodoc
class _$WithoutModelCopyWithImpl<$Res> implements $WithoutModelCopyWith<$Res> {
  _$WithoutModelCopyWithImpl(this._value, this._then);

  final WithoutModel _value;
  // ignore: unused_field
  final $Res Function(WithoutModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$WithoutModelCopyWith<$Res>
    implements $WithoutModelCopyWith<$Res> {
  factory _$WithoutModelCopyWith(
          _WithoutModel value, $Res Function(_WithoutModel) then) =
      __$WithoutModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String title});
}

/// @nodoc
class __$WithoutModelCopyWithImpl<$Res> extends _$WithoutModelCopyWithImpl<$Res>
    implements _$WithoutModelCopyWith<$Res> {
  __$WithoutModelCopyWithImpl(
      _WithoutModel _value, $Res Function(_WithoutModel) _then)
      : super(_value, (v) => _then(v as _WithoutModel));

  @override
  _WithoutModel get _value => super._value as _WithoutModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_WithoutModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WithoutModel with DiagnosticableTreeMixin implements _WithoutModel {
  const _$_WithoutModel({this.id, this.title = ''});

  factory _$_WithoutModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WithoutModelFromJson(json);

  @override
  final int? id;
  @JsonKey(defaultValue: '')
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WithoutModel(id: $id, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WithoutModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WithoutModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$WithoutModelCopyWith<_WithoutModel> get copyWith =>
      __$WithoutModelCopyWithImpl<_WithoutModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WithoutModelToJson(this);
  }
}

abstract class _WithoutModel implements WithoutModel {
  const factory _WithoutModel({int? id, String title}) = _$_WithoutModel;

  factory _WithoutModel.fromJson(Map<String, dynamic> json) =
      _$_WithoutModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WithoutModelCopyWith<_WithoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}
