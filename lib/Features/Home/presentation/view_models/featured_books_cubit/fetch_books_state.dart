part of 'fetch_books_cubit.dart';

sealed class FetchBooksState extends Equatable {
  const FetchBooksState();

  @override
  List<Object> get props => [];
}

final class FetchBooksInitial extends FetchBooksState {}
final class FetchBooksLoading extends FetchBooksState {}
final class FetchBooksSucsses extends FetchBooksState {
  final List<BookModel> books;
  const FetchBooksSucsses(this.books);
}
final class FetchBooksFailure extends FetchBooksState {
  final String errorMsg;
  const FetchBooksFailure(this.errorMsg);
}
