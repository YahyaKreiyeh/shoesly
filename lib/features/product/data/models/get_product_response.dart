import 'package:json_annotation/json_annotation.dart';

import 'review.dart';

part 'get_product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  final int id;
  final String name;
  final int price;
  @JsonKey(name: 'average_rating')
  final double averageRating;
  @JsonKey(name: 'review_count')
  final int reviewCount;
  final List<String> images;
  final List<Review> reviews;

  ProductResponse({
    required this.id,
    required this.name,
    required this.price,
    required this.averageRating,
    required this.reviewCount,
    required this.images,
    required this.reviews,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);
}
