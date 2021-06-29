import 'package:flutter/foundation.dart';
import 'package:toast_app/modules/home/models/product/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_cart_model.freezed.dart';
part 'create_cart_model.g.dart';

@freezed
class CreateOrderModel with _$CreateOrderModel {
  const factory CreateOrderModel({
    @Default(0) @JsonKey(name: 'vendor_id') int companyId,
    @Default(0) @JsonKey(name: 'user_id') int userId,
    @Default(0) @JsonKey(name: 'user_location_id') int selectedLocationId,
    @Default(0) @JsonKey(name: 'sub_total') double subTotal,
    @Default(0) @JsonKey(name: 'discount') double discount,
    @Default(0) @JsonKey(name: 'vat') double vat,
    @Default('') @JsonKey(name: 'type') String orderType,
    @Default([]) @JsonKey(name: 'cart') List<ProductModel> cartItemsList,
  }) = _CreateOrderModel;

  factory CreateOrderModel.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderModelFromJson(json);
}

