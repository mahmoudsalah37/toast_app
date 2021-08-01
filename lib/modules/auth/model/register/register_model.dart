import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';

part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    @Default('') @JsonKey(name: 'first_name') String firstName,
    @Default('') @JsonKey(name: 'last_name') String lastName,
    @Default('') @JsonKey(name: 'email') String email,
    @Default('') @JsonKey(name: 'password') String password,
    @Default('') @JsonKey(name: 'phone') String phone,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}
