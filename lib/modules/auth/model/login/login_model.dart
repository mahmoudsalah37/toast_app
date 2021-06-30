import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    @Default('') String email,
    @Default('') String password,
    // @Default('') @JsonKey('email') String email,
    // @Default('') @JsonKey('password') String password,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
