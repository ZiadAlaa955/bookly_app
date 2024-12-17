import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> getBooks({required String endPoint}) async {
    final Response response = await _dio.get('$_baseUrl$endPoint');

    return response.data;
  }
}
