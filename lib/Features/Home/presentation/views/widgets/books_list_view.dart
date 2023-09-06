import 'package:bookcade/Features/Home/presentation/view_models/featured_books_cubit/fetch_books_cubit.dart';
import 'package:bookcade/core/widgets/custom_error_msg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'book_preview.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({
    super.key,
    this.listHight,
    this.bookWidth,
  });
  final double? listHight;
  final double? bookWidth;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBooksCubit, FetchBooksState>(
      builder: (context, state) {
        if(state is FetchBooksSucsses){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: listHight ?? MediaQuery.of(context).size.height * .37,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length-1,
              itemBuilder: (context, index) {
                return BookPreview(
                  bookWidth: bookWidth,
                  imageURL: state.books[index].volumeInfo!.imageLinks!.thumbnail!
                  // state.books[index].volumeInfo!.imageLinks!=null? state.books[index].volumeInfo!.imageLinks!.thumbnail!:'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_FMjpg_UX1000_.jpg',
                );
              },
            ),
          ),
        );
        }
        else if(state is FetchBooksFailure){
          return CustomErrorMsg(errorMsg: state.errorMsg);
        }
        else {
          return const LoadingIndicator();
        }
      }
    );
  }
}

