import 'package:bloc/bloc.dart';
import 'package:bookcade/core/model/book_model/book_model.dart';
import 'package:bookcade/Features/Home/data/repositories/home_repository.dart';
import 'package:equatable/equatable.dart';
part 'fetch_similar_books_state.dart';

class FetchSimilarBooksCubit extends Cubit<FetchSimilarBooksState> {
  FetchSimilarBooksCubit(this.homeRepo) : super(FetchSimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchSimilarBooks({required String category}) async {
    emit(FetchSimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) => emit(FetchSimilarBooksFailure(failure.erorrMsg)),
        (books) => emit(FetchSimilarBooksSucsses(books)));
  }
}
