import 'package:bloc/bloc.dart';
import 'package:bookcade/core/model/book_model/book_model.dart';
import 'package:bookcade/Features/Home/data/repositories/home_repository.dart';
import 'package:equatable/equatable.dart';

part 'fetch_books_state.dart';

class FetchBooksCubit extends Cubit<FetchBooksState> {
  FetchBooksCubit(this.homeRepo) : super(FetchBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchBooks() async {
    emit(FetchBooksLoading());
    var result = await homeRepo.fetchBooks();
    result.fold((failure) => emit(FetchBooksFailure(failure.erorrMsg)),
        (books) => emit(FetchBooksSucsses(books)));
  }
}
