import 'package:bookcade/Features/Home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'book_preview.dart';
import 'book_title.dart';
import 'writer_name.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookPreview(imageURL:bookModel.volumeInfo!.imageLinks!.thumbnail! ,
            bookWidth: MediaQuery.of(context).size.width * .5,
            aspectRatioHight: 3.7),
            const SizedBox(height: 15,),
         BookTitle(
          title: bookModel.volumeInfo!.title!,
          fontSize: 24,
          textAlign: TextAlign.center,
        ),
         Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 10),
          child: WriterName(fontSize: 20,authorName:bookModel.volumeInfo!.authors?.first??"Without author name" ,maxLines: 2,),
        ),
      ],
    );
  }
}
