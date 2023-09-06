part of 'fetch_newst_books_cubit.dart';

sealed class FetchNewstBooksState extends Equatable {
  const FetchNewstBooksState();

  @override
  List<Object> get props => [];
}

final class FetchNewstBooksInitial extends FetchNewstBooksState {}
final class FetchNewstBooksLoading extends FetchNewstBooksState {}
final class FetchNewstBooksSucsses extends FetchNewstBooksState {
  final List<BookModel>books;
  const FetchNewstBooksSucsses(this.books);
}
final class FetchNewstBooksFailure extends FetchNewstBooksState {
  final String errorMsg;
  const FetchNewstBooksFailure(this.errorMsg);
}
