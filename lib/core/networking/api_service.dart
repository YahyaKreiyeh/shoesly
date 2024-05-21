import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shoesly/core/networking/api_constants.dart';
import 'package:shoesly/features/discover/data/models/get_products_response.dart';
import 'package:shoesly/features/product/data/models/get_product_body.dart';
import 'package:shoesly/features/product/data/models/get_product_response.dart';
import 'package:shoesly/features/product/data/models/get_reviews_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.products)
  Future<List<ProductsResponse>> getProducts({
    @Query("limit") required int limit,
    @Query("offset") required int offset,
  });

  @POST(ApiConstants.product)
  Future<List<ProductResponse>> getProduct({
    @Query("id") required String id,
    @Body() required ProductRequestBody productRequestBody,
  });

  @GET(ApiConstants.reviews)
  Future<List<ReviewsResponse>> getReviews({
    @Query("product_id") required String productId,
    @Query("limit") required int limit,
    @Query("offset") required int offset,
  });

  @POST(ApiConstants.createOrder)
  Future<void> createOrder(@Field('total_price') int totalPrice);

  @POST(ApiConstants.createOrderItem)
  Future<void> createOrderItem(@Body() Map<String, dynamic> orderItemRequest);
}
