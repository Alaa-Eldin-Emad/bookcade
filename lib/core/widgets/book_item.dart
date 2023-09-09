import 'package:bookcade/core/model/book_model/book_model.dart';
import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/style.dart';
import '../../Features/Home/presentation/views/book_details.dart';
import '../../Features/Home/presentation/views/widgets/book_preview.dart';
import '../../Features/Home/presentation/views/widgets/book_title.dart';
import '../../Features/Home/presentation/views/widgets/writer_name.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    required this.bookModel, this.disposeController,
  });
  final BookModel bookModel;
  final void Function()? disposeController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () { Get.to(() => BookDetailsView(bookModel: bookModel),
            transition: Transition.fade, duration: transtionsDuration);
            disposeController;
        },
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              BookPreview(
                imageURL: bookModel.volumeInfo!.imageLinks?.thumbnail ??
                    'https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png',
                bookModel: bookModel,
                bookWidth: MediaQuery.of(context).size.width * .22,
                aspectRatioHight: 6,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .65,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .55,
                        child: BookTitle(
                            title: bookModel.volumeInfo!.title!),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      WriterName(
                          authorName: bookModel.volumeInfo!.authors != null
                              ? bookModel.volumeInfo!.authors!.first
                              : "Without author Name"),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Free',
                        style: Style.text18,
                      ),
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
