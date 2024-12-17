import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio = Dio();

  Future<Map<String, dynamic>> getBooks({required String endPoint}) async {
    final Response response = await dio.get('$baseUrl$endPoint');

    Map<String, dynamic> jsonData = response.data;
    return jsonData;
  }
}
