import 'package:json_annotation/json_annotation.dart';

import 'cart_item_model.dart';

part 'order_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderRequest {
  final List<CartItemModel> cartItems;
  final double totalPrice;

  OrderRequest({
    required this.cartItems,
    required this.totalPrice,
  });

  factory OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestFromJson(json);
  Map<String, dynamic> toJson() => _$OrderRequestToJson(this);
}
