import 'package:bookcade/Features/Search/data/repositories/search_repo.dart';
import 'package:bookcade/core/API/api.dart';
import 'package:bookcade/core/errors/failures.dart';
import 'package:bookcade/core/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation extends SearchRepo{
  final API api;

  SearchRepoImplementation(this.api);

  @override
  Future<Either<Failures, List<BookModel>>> searchForBooks({required String searchBy}) async{
    try {
      var data = await api.getData(
          endPoint:
              'volumes?Filtering=free-ebooks&q=$searchBy');
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