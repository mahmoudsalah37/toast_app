// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$_$_ProductModelFromJson(Map<String, dynamic> json) {
  return _$_ProductModel(
    id: json['id'] as int?,
    title: json['title'] as String? ?? '',
    metaModel: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    priceModel: PriceModel.fromJson(json['price'] as Map<String, dynamic>),
    addons: (json['addons'] as List<dynamic>)
        .map((e) => AddonModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    withouts: (json['withouts'] as List<dynamic>)
        .map((e) => WithoutModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    varaieties: (json['vars'] as List<dynamic>)
        .map((e) => VaraietyModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    preview: PreviewModel.fromJson(json['preview'] as Map<String, dynamic>),
    quantity: json['quantity'] as int? ?? 1,
    totalAdds: (json['totalAdds'] as num?)?.toDouble() ?? 0,
    totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0,
  );
}

Map<String, dynamic> _$_$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'meta': instance.metaModel,
      'price': instance.priceModel,
      'addons': instance.addons,
      'withouts': instance.withouts,
      'vars': instance.varaieties,
      'preview': instance.preview,
      'quantity': instance.quantity,
      'totalAdds': instance.totalAdds,
      'totalPrice': instance.totalPrice,
    };
