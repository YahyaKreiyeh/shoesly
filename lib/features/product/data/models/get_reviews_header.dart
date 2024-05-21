import 'package:json_annotation/json_annotation.dart';

part 'get_reviews_header.g.dart';

@JsonSerializable()
class ReviewsRequestHeader {
  final int limit;
  final int offset;
  final int id;

  ReviewsRequestHeader({
    required this.limit,
    required this.offset,
    required this.id,
  });

  Map<String, dynamic> toJson() => _$ReviewsRequestHeaderToJson(this);
}
