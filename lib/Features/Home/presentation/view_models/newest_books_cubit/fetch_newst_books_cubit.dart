import 'package:bloc/bloc.dart';
import 'package:bookcade/Features/Home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import '../../../data/repositories/home_repository.dart';
part 'fetch_newst_books_state.dart';

class FetchNewstBooksCubit extends Cubit<FetchNewstBooksState> {
  FetchNewstBooksCubit(this.homeRepo) : super(FetchNewstBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchNewestBooks() async {
    emit(FetchNewstBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) => emit(FetchNewstBooksFailure(failure.erorrMsg)),
        (books) => emit(FetchNewstBooksSucsses(books)));
  }
}
