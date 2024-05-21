import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shoesly/core/networking/api_constants.dart';

class DioFactory {
  DioFactory._();

  static final Dio dio = Dio()
    ..options = BaseOptions(
      baseUrl: ApiConstants.apiBaseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'apikey': ApiConstants.apiKey,
        'Authorization': ApiConstants.apiAuthorization,
      },
    )
    ..interceptors.addAll([
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['apikey'] = ApiConstants.apiKey;
          options.headers['Authorization'] = ApiConstants.apiAuthorization;
          return handler.next(options);
        },
      ),
    ]);

  static Dio getDio() => dio;
}
