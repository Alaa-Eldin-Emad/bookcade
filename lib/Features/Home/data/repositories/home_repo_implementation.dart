import 'package:bookcade/Features/Home/data/model/book_model/book_model.dart';
import 'package:bookcade/Features/Home/data/repositories/home_repository.dart';
import 'package:bookcade/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation extends HomeRepo{
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchBooks() {
    // TODO: implement fetchBooks
    throw UnimplementedError();
  }

}