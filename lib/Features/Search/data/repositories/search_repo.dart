import 'package:bookcade/core/model/book_model/book_model.dart';
import 'package:bookcade/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<Failures,List<BookModel>>> searchForBooks({required String searchBy});
}