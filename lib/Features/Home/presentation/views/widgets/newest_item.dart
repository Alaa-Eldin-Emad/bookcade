import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/style.dart';
import '../book_details.dart';
import 'book_preview.dart';
import 'book_rating.dart';
import 'book_title.dart';
import 'writer_name.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () => Get.to(() => const BookDetailsView(),
            transition: Transition.fade, duration: transtionsDuration),
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              BookPreview(imageURL: 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_FMjpg_UX1000_.jpg',
                bookWidth: MediaQuery.of(context).size.width * .22,
                aspectRatioHight: 6,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .65,
                child:  Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*.55,
                        child: const BookTitle(title: 'Game Of Thrones Chapter one')),
                      const WriterName(),
                      const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text('Free', style: Style.text18),
         Spacer(),
                      BookRating(),
                      ],
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
