import 'package:bookcade/Features/Home/data/model/book_model/book_model.dart';
import 'package:bookcade/Features/Home/data/repositories/home_repo_implementation.dart';
import 'package:bookcade/Features/Home/presentation/view_models/similar_books/fetch_similar_books_cubit.dart';
import 'package:bookcade/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => FetchSimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
      child:  Scaffold(
        body: BookDetailsViewBody(bookModel: bookModel,),
      ),
    );
  }
}
