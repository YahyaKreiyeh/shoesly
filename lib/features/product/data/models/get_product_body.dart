import 'package:json_annotation/json_annotation.dart';

part 'get_product_body.g.dart';

@JsonSerializable()
class ProductRequestBody {
  @JsonKey(name: 'product_id')
  final int id;

  ProductRequestBody({
    required this.id,
  });

  factory ProductRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ProductRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ProductRequestBodyToJson(this);
}
