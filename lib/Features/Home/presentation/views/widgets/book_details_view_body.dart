import 'package:bookcade/core/model/book_model/book_model.dart';
import 'package:bookcade/Features/Home/presentation/view_models/similar_books/fetch_similar_books_cubit.dart';
import 'package:bookcade/constants.dart';
import 'package:bookcade/core/utils/functions/url_luncher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book_details_section.dart';
import '../../../../../core/widgets/custom_buttom.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {
  @override
  void initState() {
    BlocProvider.of<FetchSimilarBooksCubit>(context).featchSimilarBooks(
        category: widget.bookModel.volumeInfo!.categories?.first ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            const Align(alignment: Alignment.topLeft, child:  BackButton()),
            const SizedBox(height: 10,),
            BookDetailsSection(bookModel: widget.bookModel),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 25),
              child: Row(
                children: [
                  const CustomButton(
                      buttomColor: Colors.white,
                      text: 'Free',
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12)),
                      textColor: Colors.black),
                  CustomButton(
                    onPressed: () {
                      urlLuncher(
                          context, widget.bookModel.volumeInfo!.previewLink);
                    },
                    buttomColor: whiteRed,
                    text: previewAvilablity(widget.bookModel),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                ],
              ),
            ),
            const SimilarBooksSection(),
          ],
        ),
      ),
    );
  }
   String previewAvilablity(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
