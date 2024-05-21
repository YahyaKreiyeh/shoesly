// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';

import 'api_constants.dart';
import 'api_error_model.dart';

enum DataSource {
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTHORIZED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECEIVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

class ResponseCode {
  ResponseCode._();
  static const int SUCCESS = 200;
  static const int NO_CONTENT = 201;
  static const int BAD_REQUEST = 400;
  static const int UNAUTHORIZED = 401;
  static const int FORBIDDEN = 403;
  static const int NOT_FOUND = 404;
  static const int INTERNAL_SERVER_ERROR = 500;

  // Local status codes
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECEIVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  ResponseMessage._();
  static const String NO_CONTENT = ApiErrors.noContent;
  static const String BAD_REQUEST = ApiErrors.badRequestError;
  static const String UNAUTHORIZED = ApiErrors.unauthorizedError;
  static const String FORBIDDEN = ApiErrors.forbiddenError;
  static const String NOT_FOUND = ApiErrors.notFoundError;
  static const String INTERNAL_SERVER_ERROR = ApiErrors.internalServerError;

  // Local status messages
  static const String CONNECT_TIMEOUT = ApiErrors.timeoutError;
  static const String CANCEL = ApiErrors.defaultError;
  static const String RECEIVE_TIMEOUT = ApiErrors.timeoutError;
  static const String SEND_TIMEOUT = ApiErrors.timeoutError;
  static const String CACHE_ERROR = ApiErrors.cacheError;
  static const String NO_INTERNET_CONNECTION = ApiErrors.noInternetError;
  static const String DEFAULT = ApiErrors.defaultError;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    return _dataSourceMap[this] ??
        ApiErrorModel(
            code: ResponseCode.DEFAULT, message: ResponseMessage.DEFAULT);
  }

  static final Map<DataSource, ApiErrorModel> _dataSourceMap = {
    DataSource.NO_CONTENT: ApiErrorModel(
        code: ResponseCode.NO_CONTENT, message: ResponseMessage.NO_CONTENT),
    DataSource.BAD_REQUEST: ApiErrorModel(
        code: ResponseCode.BAD_REQUEST, message: ResponseMessage.BAD_REQUEST),
    DataSource.FORBIDDEN: ApiErrorModel(
        code: ResponseCode.FORBIDDEN, message: ResponseMessage.FORBIDDEN),
    DataSource.UNAUTHORIZED: ApiErrorModel(
        code: ResponseCode.UNAUTHORIZED, message: ResponseMessage.UNAUTHORIZED),
    DataSource.NOT_FOUND: ApiErrorModel(
        code: ResponseCode.NOT_FOUND, message: ResponseMessage.NOT_FOUND),
    DataSource.INTERNAL_SERVER_ERROR: ApiErrorModel(
        code: ResponseCode.INTERNAL_SERVER_ERROR,
        message: ResponseMessage.INTERNAL_SERVER_ERROR),
    DataSource.CONNECT_TIMEOUT: ApiErrorModel(
        code: ResponseCode.CONNECT_TIMEOUT,
        message: ResponseMessage.CONNECT_TIMEOUT),
    DataSource.CANCEL: ApiErrorModel(
        code: ResponseCode.CANCEL, message: ResponseMessage.CANCEL),
    DataSource.RECEIVE_TIMEOUT: ApiErrorModel(
        code: ResponseCode.RECEIVE_TIMEOUT,
        message: ResponseMessage.RECEIVE_TIMEOUT),
    DataSource.SEND_TIMEOUT: ApiErrorModel(
        code: ResponseCode.SEND_TIMEOUT, message: ResponseMessage.SEND_TIMEOUT),
    DataSource.CACHE_ERROR: ApiErrorModel(
        code: ResponseCode.CACHE_ERROR, message: ResponseMessage.CACHE_ERROR),
    DataSource.NO_INTERNET_CONNECTION: ApiErrorModel(
        code: ResponseCode.NO_INTERNET_CONNECTION,
        message: ResponseMessage.NO_INTERNET_CONNECTION),
    DataSource.DEFAULT: ApiErrorModel(
        code: ResponseCode.DEFAULT, message: ResponseMessage.DEFAULT),
  };
}

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    apiErrorModel = error is DioException
        ? _handleError(error)
        : DataSource.DEFAULT.getFailure();
  }

  ApiErrorModel _handleError(DioException error) {
    if (error.response != null && error.response?.data != null) {
      return ApiErrorModel.fromJson(error.response!.data);
    }
    return _errorTypeMap[error.type] ?? DataSource.DEFAULT.getFailure();
  }

  static final Map<DioExceptionType, ApiErrorModel> _errorTypeMap = {
    DioExceptionType.connectionTimeout: DataSource.CONNECT_TIMEOUT.getFailure(),
    DioExceptionType.sendTimeout: DataSource.SEND_TIMEOUT.getFailure(),
    DioExceptionType.receiveTimeout: DataSource.RECEIVE_TIMEOUT.getFailure(),
    DioExceptionType.cancel: DataSource.CANCEL.getFailure(),
    DioExceptionType.connectionError: DataSource.DEFAULT.getFailure(),
    DioExceptionType.badCertificate: DataSource.DEFAULT.getFailure(),
    DioExceptionType.badResponse: DataSource.DEFAULT.getFailure(),
    DioExceptionType.unknown: DataSource.DEFAULT.getFailure(),
  };
}

class ApiInternalStatus {
  ApiInternalStatus._();
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
}
