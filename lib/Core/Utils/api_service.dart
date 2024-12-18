import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiService({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> getBooks({required String endpoint}) async {
    final Response response = await _dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
