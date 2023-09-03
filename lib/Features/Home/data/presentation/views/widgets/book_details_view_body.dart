import 'package:bookcade/Features/Home/data/presentation/views/widgets/book_preview.dart';
import 'package:bookcade/Features/Home/data/presentation/views/widgets/book_rating.dart';
import 'package:bookcade/Features/Home/data/presentation/views/widgets/book_title.dart';
import 'package:bookcade/Features/Home/data/presentation/views/widgets/writer_name.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

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
             child: BookPreview(bookWidth: MediaQuery.of(context).size.width * .5,aspectRatioHight: 3),
           ),
           const BookTitle(title: 'Game Of Thrones Chapter one',fontSize: 24,),
           const Padding(
             padding:  EdgeInsets.only(top: 5,bottom: 10),
             child:  WriterName(fontSize: 20),
           ),
           const BookRating(),
        ],
      ),
    );
  }
}
