import 'package:widgets_book/src/helper/network/domain/api_error.dart';
import 'package:dio/dio.dart';

extension DioExceptionX on DioException {
  ApiError toApiError() {
    var apiError = ApiError();
    return apiError = apiError.copyWith(
      code: response?.statusCode.toString(),
      message: message,
    );
  }
}