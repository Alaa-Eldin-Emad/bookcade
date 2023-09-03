import 'package:flutter/material.dart';
import '../../../../../../core/utils/style.dart';
import 'books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can also like',
              style: Style.text16,
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: BooksListView(
            listHight: MediaQuery.of(context).size.height * .2,
            bookWidth: MediaQuery.of(context).size.width * .25,
          ),
        ),
      ],
    );
  }
}
