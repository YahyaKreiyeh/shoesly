// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRequestBody _$ProductRequestBodyFromJson(Map<String, dynamic> json) =>
    ProductRequestBody(
      id: (json['product_id'] as num).toInt(),
    );

Map<String, dynamic> _$ProductRequestBodyToJson(ProductRequestBody instance) =>
    <String, dynamic>{
      'product_id': instance.id,
    };
