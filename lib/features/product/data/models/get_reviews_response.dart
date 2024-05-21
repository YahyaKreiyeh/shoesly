import 'package:json_annotation/json_annotation.dart';

part 'get_reviews_response.g.dart';

@JsonSerializable()
class ReviewsResponse {
  final int id;
  final int rating;
  final String comment;

  ReviewsResponse({
    required this.id,
    required this.rating,
    required this.comment,
  });

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);
}
