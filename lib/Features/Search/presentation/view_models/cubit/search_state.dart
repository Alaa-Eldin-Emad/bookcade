part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchSucsses extends SearchState {
  final List<BookModel>books;
  const SearchSucsses(this.books);
}
final class SearchFailure extends SearchState {
  final String errorMsg;
  const SearchFailure(this.errorMsg);
}
