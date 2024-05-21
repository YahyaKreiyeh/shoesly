// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reviews_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewsRequestHeader _$ReviewsRequestHeaderFromJson(
        Map<String, dynamic> json) =>
    ReviewsRequestHeader(
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$ReviewsRequestHeaderToJson(
        ReviewsRequestHeader instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'id': instance.id,
    };
