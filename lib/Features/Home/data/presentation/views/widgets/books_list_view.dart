import 'package:flutter/material.dart';
import 'book_preview.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({
    super.key, this.listHight, this.bookWidth,
  });
  final double? listHight;
  final double? bookWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: listHight?? MediaQuery.of(context).size.height * .37,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return  BookPreview(bookWidth:bookWidth ,);
          },
        ),
      ),
    );
  }
}
