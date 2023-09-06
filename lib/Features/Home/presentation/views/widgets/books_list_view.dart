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
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return BookPreview(
                  bookWidth: bookWidth,
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

