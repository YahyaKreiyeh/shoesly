import 'package:json_annotation/json_annotation.dart';

part 'get_product_header.g.dart';

@JsonSerializable()
class ProductRequestHeader {
  final int id;

  ProductRequestHeader({
    required this.id,
  });

  Map<String, dynamic> toJson() => _$ProductRequestHeaderToJson(this);
}
