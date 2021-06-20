// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) {
  return _MetaModel.fromJson(json);
}

/// @nodoc
class _$MetaModelTearOff {
  const _$MetaModelTearOff();

  _MetaModel call({String content = ''}) {
    return _MetaModel(
      content: content,
    );
  }

  MetaModel fromJson(Map<String, Object> json) {
    return MetaModel.fromJson(json);
  }
}

/// @nodoc
const $MetaModel = _$MetaModelTearOff();

/// @nodoc
mixin _$MetaModel {
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaModelCopyWith<MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaModelCopyWith<$Res> {
  factory $MetaModelCopyWith(MetaModel value, $Res Function(MetaModel) then) =
      _$MetaModelCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class _$MetaModelCopyWithImpl<$Res> implements $MetaModelCopyWith<$Res> {
  _$MetaModelCopyWithImpl(this._value, this._then);

  final MetaModel _value;
  // ignore: unused_field
  final $Res Function(MetaModel) _then;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MetaModelCopyWith<$Res> implements $MetaModelCopyWith<$Res> {
  factory _$MetaModelCopyWith(
          _MetaModel value, $Res Function(_MetaModel) then) =
      __$MetaModelCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class __$MetaModelCopyWithImpl<$Res> extends _$MetaModelCopyWithImpl<$Res>
    implements _$MetaModelCopyWith<$Res> {
  __$MetaModelCopyWithImpl(_MetaModel _value, $Res Function(_MetaModel) _then)
      : super(_value, (v) => _then(v as _MetaModel));

  @override
  _MetaModel get _value => super._value as _MetaModel;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_MetaModel(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaModel with DiagnosticableTreeMixin implements _MetaModel {
  const _$_MetaModel({this.content = ''});

  factory _$_MetaModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MetaModelFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MetaModel(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MetaModel'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MetaModel &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$MetaModelCopyWith<_MetaModel> get copyWith =>
      __$MetaModelCopyWithImpl<_MetaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MetaModelToJson(this);
  }
}

abstract class _MetaModel implements MetaModel {
  const factory _MetaModel({String content}) = _$_MetaModel;

  factory _MetaModel.fromJson(Map<String, dynamic> json) =
      _$_MetaModel.fromJson;

  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MetaModelCopyWith<_MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
