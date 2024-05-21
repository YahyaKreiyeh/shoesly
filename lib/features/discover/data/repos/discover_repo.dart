import 'package:shoesly/core/networking/api_error_handler.dart';
import 'package:shoesly/core/networking/api_result.dart';
import 'package:shoesly/core/networking/api_service.dart';
import 'package:shoesly/features/discover/data/models/get_products_header.dart';
import 'package:shoesly/features/discover/data/models/get_products_response.dart';

class DiscoverRepo {
  final ApiService _apiService;

  DiscoverRepo(this._apiService);

  Future<ApiResult<List<ProductsResponse>>> getProducts(
      ProductsRequestHeader productsRequestHeader) async {
    try {
      final response = await _apiService.getProducts(
        limit: productsRequestHeader.limit,
        offset: productsRequestHeader.offset,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
