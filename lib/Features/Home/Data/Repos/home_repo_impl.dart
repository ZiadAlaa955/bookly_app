import 'package:bookly_app/Core/Errors/failure.dart';
import 'package:bookly_app/Core/Utils/api_service.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Data/Repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> jsonData = await ApiService()
          .getBooks(endPoint: 'volumes?orderBy=newest&q=subject:programming');
      List<BookModel> books = [];
      for (var book in jsonData['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaluire.fromDioEsxeption(e));
      } else {
        return left(ServerFaluire(errorMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> jsonData = await ApiService()
          .getBooks(endPoint: 'volumes?q=subject:programming');
      List<BookModel> books = [];
      for (var book in jsonData['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaluire.fromDioEsxeption(e));
      } else {
        return left(ServerFaluire(errorMessage: e.toString()));
      }
    }
  }
}
