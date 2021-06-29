import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_order_model.freezed.dart';

part 'place_order_model.g.dart';

@freezed
class PlaceOrderModel with _$PlaceOrderModel {
  const factory PlaceOrderModel({
    @Default(0) @JsonKey(name: 'order_id') int orderId,
    @Default(0) @JsonKey(name: 'driver_id') int driverId,
    @Default(0) @JsonKey(name: 'delivery_fees') double deliveryFees,
  }) = _PlaceOrderModel;

  factory PlaceOrderModel.fromJson(Map<String, dynamic> json) =>
      PlaceOrderModel.fromJson(json);
}
