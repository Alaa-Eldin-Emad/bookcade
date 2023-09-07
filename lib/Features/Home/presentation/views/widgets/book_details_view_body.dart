import 'package:bookcade/Features/Home/data/model/book_model/book_model.dart';
import 'package:bookcade/Features/Home/presentation/view_models/similar_books/fetch_similar_books_cubit.dart';
import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book_details_section.dart';
import 'custom_app_bar.dart';
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
        category: widget.bookModel.volumeInfo!.categories?.first??'');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            iconOnPressed: () {},
            leadingIcon: Icons.close,
            actionIcon: const Icon(
              Icons.shopping_cart_checkout,
              size: 32,
            ),
          ),
          BookDetailsSection(bookModel: widget.bookModel),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 25),
            child: Row(
              children: [
                CustomButton(
                    buttomColor: Colors.white,
                    text: 'Free',
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    textColor: Colors.black),
                CustomButton(
                  buttomColor: whiteRed,
                  text: 'Preveiw',
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                ),
              ],
            ),
          ),
           const SimilarBooksSection(),
        ],
      ),
    );
  }
}
