import 'package:shoesly/core/networking/api_error_handler.dart';
import 'package:shoesly/core/networking/api_result.dart';
import 'package:shoesly/core/networking/api_service.dart';
import 'package:shoesly/features/product/data/models/get_product_body.dart';
import 'package:shoesly/features/product/data/models/get_product_header.dart';
import 'package:shoesly/features/product/data/models/get_product_response.dart';
import 'package:shoesly/features/product/data/models/get_reviews_header.dart';
import 'package:shoesly/features/product/data/models/get_reviews_response.dart';

class ProductRepo {
  final ApiService _apiService;

  ProductRepo(this._apiService);

  Future<ApiResult<List<ProductResponse>>> getProduct({
    required ProductRequestBody productRequestBody,
    required ProductRequestHeader productRequestHeader,
  }) async {
    try {
      final response = await _apiService.getProduct(
        id: 'eq.${productRequestHeader.id}',
        productRequestBody: productRequestBody,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<ReviewsResponse>>> getReviews(
      ReviewsRequestHeader reviewsRequestHeader) async {
    try {
      final response = await _apiService.getReviews(
        productId: 'eq.${reviewsRequestHeader.id}',
        limit: reviewsRequestHeader.limit,
        offset: reviewsRequestHeader.offset,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
