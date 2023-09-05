import 'package:bookcade/Features/Home/data/model/book_model/book_model.dart';
import 'package:bookcade/Features/Home/data/repositories/home_repository.dart';
import 'package:bookcade/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/utils/API/api.dart';

class HomeRepoImplementation extends HomeRepo{
  final API api;
  HomeRepoImplementation(this.api);
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() async{
    try {
   var data = await api.getData(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');
   List<BookModel>books =[];
   for (var item in data['items']) {
     books.add(BookModel.fromJson(item));
   }
   return right(books);
    }
    catch (e){
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchBooks() {
    // TODO: implement fetchBooks
    throw UnimplementedError();
  }

}