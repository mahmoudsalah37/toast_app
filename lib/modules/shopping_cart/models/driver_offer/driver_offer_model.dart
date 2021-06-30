import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_offer_model.freezed.dart';

part 'driver_offer_model.g.dart';

@freezed
class DriverOfferModel with _$DriverOfferModel {
  const factory DriverOfferModel({
    @Default('') String driverName,
    @Default('') String img,
    @Default('') String driverDeliveryDistance,
    @Default(0) int driverDeliveryTime,
    @Default(0) double driverDeliveryOffer,
    @Default(0) double driverRate ,
  }) = _DriverOfferModel;
  factory DriverOfferModel.fromJson(Map<String, dynamic> json) =>
      _$DriverOfferModelFromJson(json);

}
