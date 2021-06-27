import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:toast_app/modules/home/models/addon/addon_model.dart';
import 'package:toast_app/modules/home/models/without/without_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    int? id,
    @Default(0) int quantity,
    @Default(0) double price,
    @Default('') String placeName,
    @Default('') String itemName,
    @Default('') String description,
    @Default([]) List<AddonModel> addOns,
    @Default([]) List<WithoutModel> withOuts,
  }) = _CartItemModel;
  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}
