import 'package:bookcade/core/model/book_model/book_model.dart';
import 'package:bookcade/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failures,List<BookModel>>> fetchBooks();
  Future<Either<Failures,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures,List<BookModel>>> fetchSimilarBooks({required String category });
}