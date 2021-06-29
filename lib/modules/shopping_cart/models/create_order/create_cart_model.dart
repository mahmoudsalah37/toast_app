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

  Map<String, dynamic> toJsonCustom(int locationId) {
    final data = new Map<String, dynamic>();
    data['vendor_id'] = 3;
    data['user_id'] = 1;
    data['user_location_id'] = locationId;
    data['sub_total'] = this.subTotal;
    data['discount'] = this.discount;
    data['vat'] = this.vat;
    data['type'] = this.orderType;
    data['cart'] = this
        .cartItemsList
        .map((e) => {
              'item_id': e.id,
              'quantity': e.quantity,
              'addons': e.addons.map((e) => e.id).toList(growable: false),
              'withouts': e.withouts.map((e) => e.id).toList(growable: false),
              'variety_id': e.varaieties.first.termId,
            })
        .toList(growable: false);
    return data;
  }
}
