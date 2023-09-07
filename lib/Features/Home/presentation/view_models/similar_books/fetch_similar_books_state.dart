part of 'fetch_similar_books_cubit.dart';

sealed class FetchSimilarBooksState extends Equatable {
  const FetchSimilarBooksState();

  @override
  List<Object> get props => [];
}

final class FetchSimilarBooksInitial extends FetchSimilarBooksState {}
final class FetchSimilarBooksLoading extends FetchSimilarBooksState {}
final class FetchSimilarBooksSucsses extends FetchSimilarBooksState {
  final List<BookModel> books;

  const FetchSimilarBooksSucsses(this.books);
}
final class FetchSimilarBooksFailure extends FetchSimilarBooksState {
  final String errorMsg;

  const FetchSimilarBooksFailure(this.errorMsg);
}

