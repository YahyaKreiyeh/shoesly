import 'package:json_annotation/json_annotation.dart';

part 'get_products_header.g.dart';

@JsonSerializable()
class ProductsRequestHeader {
  final int limit;
  final int offset;

  ProductsRequestHeader({
    required this.limit,
    required this.offset,
  });

  Map<String, dynamic> toJson() => _$ProductsRequestHeaderToJson(this);
}
