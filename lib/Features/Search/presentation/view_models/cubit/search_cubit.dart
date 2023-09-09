import 'package:bookcade/Features/Search/data/repositories/search_repo.dart';
import 'package:bookcade/core/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  static SearchCubit get(context) => BlocProvider.of(context);
  final SearchRepo searchRepo;
  bool loading =false;
  String ?inputText;
  final focusSearch = FocusNode();
 TextEditingController searchController=TextEditingController();
  Future<void> searchForBooks({required String searchBy}) async {
    emit(SearchInitial());
    if (loading==true) {
  emit(SearchLoading());
}
    var result = await searchRepo.searchForBooks(searchBy: searchBy);
    result.fold((failure) => emit(SearchFailure(failure.erorrMsg)),
        (books) => emit(SearchSucsses(books)));
  }
}
