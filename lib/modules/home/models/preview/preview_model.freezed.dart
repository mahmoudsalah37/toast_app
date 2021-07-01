// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreviewModel _$PreviewModelFromJson(Map<String, dynamic> json) {
  return _PreviewModel.fromJson(json);
}

/// @nodoc
class _$PreviewModelTearOff {
  const _$PreviewModelTearOff();

  _PreviewModel call({String content = ''}) {
    return _PreviewModel(
      content: content,
    );
  }

  PreviewModel fromJson(Map<String, Object> json) {
    return PreviewModel.fromJson(json);
  }
}

/// @nodoc
const $PreviewModel = _$PreviewModelTearOff();

/// @nodoc
mixin _$PreviewModel {
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviewModelCopyWith<PreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewModelCopyWith<$Res> {
  factory $PreviewModelCopyWith(
          PreviewModel value, $Res Function(PreviewModel) then) =
      _$PreviewModelCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class _$PreviewModelCopyWithImpl<$Res> implements $PreviewModelCopyWith<$Res> {
  _$PreviewModelCopyWithImpl(this._value, this._then);

  final PreviewModel _value;
  // ignore: unused_field
  final $Res Function(PreviewModel) _then;

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
abstract class _$PreviewModelCopyWith<$Res>
    implements $PreviewModelCopyWith<$Res> {
  factory _$PreviewModelCopyWith(
          _PreviewModel value, $Res Function(_PreviewModel) then) =
      __$PreviewModelCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class __$PreviewModelCopyWithImpl<$Res> extends _$PreviewModelCopyWithImpl<$Res>
    implements _$PreviewModelCopyWith<$Res> {
  __$PreviewModelCopyWithImpl(
      _PreviewModel _value, $Res Function(_PreviewModel) _then)
      : super(_value, (v) => _then(v as _PreviewModel));

  @override
  _PreviewModel get _value => super._value as _PreviewModel;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_PreviewModel(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreviewModel with DiagnosticableTreeMixin implements _PreviewModel {
  const _$_PreviewModel({this.content = ''});

  factory _$_PreviewModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PreviewModelFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreviewModel(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreviewModel'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreviewModel &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$PreviewModelCopyWith<_PreviewModel> get copyWith =>
      __$PreviewModelCopyWithImpl<_PreviewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PreviewModelToJson(this);
  }
}

abstract class _PreviewModel implements PreviewModel {
  const factory _PreviewModel({String content}) = _$_PreviewModel;

  factory _PreviewModel.fromJson(Map<String, dynamic> json) =
      _$_PreviewModel.fromJson;

  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PreviewModelCopyWith<_PreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
