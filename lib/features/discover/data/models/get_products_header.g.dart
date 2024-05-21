// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsRequestHeader _$ProductsRequestHeaderFromJson(
        Map<String, dynamic> json) =>
    ProductsRequestHeader(
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$ProductsRequestHeaderToJson(
        ProductsRequestHeader instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
    };
