import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:toast_app/modules/home/models/product/product_model.dart';

part 'cart_model.freezed.dart';

part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    @Default(0) double subTotal,
    @Default(0) double vat,
    @Default(0) double total,
    @Default(<ProductModel>[]) List<ProductModel> products,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);

    Map<String, dynamic> toJsonCustom() {
      final data = new Map<String, dynamic>();
      data['vendor_id'] = 3;
      data['user_id'] = 1;
      data['user_location_id'] = 1;
      return data;
    }
}
