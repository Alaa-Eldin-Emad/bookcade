import 'package:bookcade/Features/Home/data/model/book_model/book_model.dart';
import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/style.dart';
import '../book_details.dart';
import 'book_preview.dart';
import 'book_title.dart';
import 'writer_name.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({
    super.key, required this.bookModel, 
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () => Get.to(() =>  BookDetailsView(bookModel: bookModel),
            transition: Transition.fade, duration: transtionsDuration),
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              BookPreview(imageURL:bookModel.volumeInfo!.imageLinks?.thumbnail??'https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png',
                bookWidth: MediaQuery.of(context).size.width * .22,
                aspectRatioHight: 6,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .65,
                child:  Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 0, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*.55,
                        child:  BookTitle(title: bookModel.volumeInfo!.title!)),
                        const SizedBox(height: 5,),
                       WriterName(authorName: bookModel.volumeInfo!.authors!=null?bookModel.volumeInfo!.authors!.first:"Without author Name"),
                       const SizedBox(height: 5,),
                       const Text('Free', style: Style.text18,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
