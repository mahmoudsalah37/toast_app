import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    @Default(0)  int id,
    @Default(0)  int quantity,
    @Default(0)  double price,
    @Default('') String placeName,
    @Default('') String itemName,
    @Default('') String description,
    @Default([]) List<int> addOnsListOfIds,
    @Default([]) List<int> withOutListOfIds,

  }) = _CartItemModel;
  factory CartItemModel.fromJson(Map<String, dynamic> json) => _$CartItemModelFromJson(json);
}

