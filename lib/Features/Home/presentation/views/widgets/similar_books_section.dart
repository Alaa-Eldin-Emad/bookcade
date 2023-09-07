import 'package:bookcade/Features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key,});
  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can also like',
              style: Style.text16,
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: SimilarBooksListView(
          ),
        ),
      ],
    );
  }
}
