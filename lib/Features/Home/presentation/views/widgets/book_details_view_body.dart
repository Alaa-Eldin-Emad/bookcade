import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'custom_app_bar.dart';
import '../../../../../core/widgets/custom_buttom.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

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
          const BookDetailsSection(),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 40),
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