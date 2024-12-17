import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFaluire extends Failure {
  ServerFaluire({required super.errorMessage});

  factory ServerFaluire.fromDioEsxeption(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaluire(errorMessage: 'Connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFaluire(errorMessage: 'Url is sent timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFaluire(errorMessage: 'Revieve timeout');
      case DioExceptionType.badCertificate:
        return ServerFaluire(errorMessage: 'Incorrect certificate');
      case DioExceptionType.badResponse:
        return ServerFaluire.fromBadResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFaluire(errorMessage: 'Request was cancelled');
      case DioExceptionType.connectionError:
        return ServerFaluire(
            errorMessage: 'Connection failed. Check your internet connection.');
      case DioExceptionType.unknown:
      default:
        return ServerFaluire(
            errorMessage:
                'An unexpected error occurred. Please try again later.');
    }
  }
  factory ServerFaluire.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaluire(errorMessage: response['error']['message']);
    } else if (statusCode == 500) {
      return ServerFaluire(
          errorMessage: 'Internal Server Error. Please try later');
    } else {
      return ServerFaluire(
          errorMessage: 'Oops there is an error. Please try later');
    }
  }
}
