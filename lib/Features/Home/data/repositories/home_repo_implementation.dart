import 'package:bookcade/core/model/book_model/book_model.dart';
import 'package:bookcade/Features/Home/data/repositories/home_repository.dart';
import 'package:bookcade/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/API/api.dart';

class HomeRepoImplementation extends HomeRepo {
  final API api;
  HomeRepoImplementation(this.api);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await api.getData(
          endPoint:
              'volumes?q=fire&Sorting=newest&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchBooks() async {
    try {
      var data = await api.getData(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:novels');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  
  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks({required String category}) async{
   try {
      var data = await api.getData(
          endPoint: 'volumes?q=$category&Sorting=relevance&Filtering=free_ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
