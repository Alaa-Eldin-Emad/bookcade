import 'package:flutter/material.dart';
import 'book_preview.dart';
import 'book_rating.dart';
import 'book_title.dart';
import 'writer_name.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
