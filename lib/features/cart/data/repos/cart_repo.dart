import 'package:shoesly/core/networking/api_error_handler.dart';
import 'package:shoesly/core/networking/api_result.dart';
import 'package:shoesly/core/networking/api_service.dart';
import 'package:shoesly/features/cart/data/models/order_request_body.dart';

class CartRepo {
  final ApiService _apiService;

  CartRepo(this._apiService);

  Future<ApiResult<void>> createOrderWithItems({
    required OrderRequest orderRequest,
    required int totalPrice,
  }) async {
    try {
      await _apiService.createOrder(totalPrice);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
