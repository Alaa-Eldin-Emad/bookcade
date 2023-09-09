import 'package:bookcade/Features/Home/presentation/view_models/similar_books/fetch_similar_books_cubit.dart';
import 'package:bookcade/core/widgets/custom_error_msg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/loading_indicator/general_loading_indicator.dart';
import 'book_preview.dart';

class SimilarBooksListView extends StatefulWidget {
  const SimilarBooksListView({
    super.key, 
  });
  
  @override
  State<SimilarBooksListView> createState() => _SimilarBooksListViewState();
}


class _SimilarBooksListViewState extends State<SimilarBooksListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarBooksCubit, FetchSimilarBooksState>(
      builder: (context, state) {
        if(state is FetchSimilarBooksSucsses){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height:MediaQuery.of(context).size.height * .24,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BookPreview(bookModel: state.books[index],
                  bookWidth: MediaQuery.of(context).size.width * .25,
                  imageURL: state.books[index].volumeInfo!.imageLinks?.thumbnail??'https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png'
                );
              },
            ),
          ),
        );
        }
        else if(state is FetchSimilarBooksFailure){
          return CustomErrorMsg(errorMsg: state.errorMsg);
        }
        else {
          return  LoadingIndicator(bookWidth:MediaQuery.of(context).size.width * .25,height:MediaQuery.of(context).size.height * .24 ,);
        }
      }
    );
  }
}

