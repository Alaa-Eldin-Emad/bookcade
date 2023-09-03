import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/utils/style.dart';
import '../book_details.dart';
import 'book_preview.dart';
import 'book_rating.dart';
import 'book_title.dart';
import 'writer_name.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () => Get.to(() => const BookDetailsView(),
            transition: Transition.fade, duration: transtionsDuration),
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              BookPreview(
                bookWidth: MediaQuery.of(context).size.width * .22,
                aspectRatioHight: 6,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .7,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BookTitle(title: 'Game Of Thrones Chapter one'),
                      WriterName(),
                      Row(
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
