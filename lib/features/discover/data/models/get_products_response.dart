import 'package:json_annotation/json_annotation.dart';

part 'get_products_response.g.dart';

@JsonSerializable()
class ProductsResponse {
  final int id;
  final String name;
  final int price;
  @JsonKey(name: 'average_rating')
  final double averageRating;
  @JsonKey(name: 'review_count')
  final int reviewCount;
  @JsonKey(name: 'image_url')
  final String imageUrl;

  ProductsResponse({
    required this.id,
    required this.name,
    required this.price,
    required this.averageRating,
    required this.reviewCount,
    required this.imageUrl,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
}
