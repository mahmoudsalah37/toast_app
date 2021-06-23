import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../addon/addon_model.dart';
import '../meta/meta_model.dart';
import '../price/price_model.dart';
import '../varaiety/varaiety_model.dart';
import '../without/without_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    @Default('') String title,
    @Default(const MetaModel()) @JsonKey(name: 'meta') MetaModel metaModel,
    @Default(const PriceModel()) @JsonKey(name: 'price') PriceModel priceModel,
    @Default(const <AddonModel>[])
    @JsonKey(name: 'addons')
        List<AddonModel> addons,
    @Default(const <WithoutModel>[])
    @JsonKey(name: 'withouts')
        List<WithoutModel> withouts,
    @Default(const <VaraietyModel>[])
    @JsonKey(name: 'vars')
        List<VaraietyModel> varaieties,
  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
