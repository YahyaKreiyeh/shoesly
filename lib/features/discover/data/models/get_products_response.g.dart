// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) =>
    ProductsResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      averageRating: (json['average_rating'] as num).toDouble(),
      reviewCount: (json['review_count'] as num).toInt(),
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$ProductsResponseToJson(ProductsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'average_rating': instance.averageRating,
      'review_count': instance.reviewCount,
      'image_url': instance.imageUrl,
    };
