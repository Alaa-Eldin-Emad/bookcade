import 'package:bookcade/Features/Home/data/presentation/views/widgets/book_preview.dart';
import 'package:bookcade/Features/Home/data/presentation/views/widgets/book_rating.dart';
import 'package:bookcade/Features/Home/data/presentation/views/widgets/book_title.dart';
import 'package:bookcade/Features/Home/data/presentation/views/widgets/writer_name.dart';
import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_double_buttom.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: BookPreview(
                bookWidth: MediaQuery.of(context).size.width * .5,
                aspectRatioHight: 3),
          ),
          const BookTitle(
            title: 'Game Of Thrones Chapter one',
            fontSize: 24,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 10),
            child: WriterName(fontSize: 20),
          ),
          const BookRating(),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 15),
            child: Row(
              children: [
                CustomDoubleButton(
                    buttomColor: Colors.white,
                    text: 'Free',
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    textColor: Colors.black),
                CustomDoubleButton(
                  buttomColor: whiteRed,
                  text: 'Preveiw',
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
