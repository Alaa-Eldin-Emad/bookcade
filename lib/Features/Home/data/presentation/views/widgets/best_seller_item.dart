import 'package:bookcade/constants.dart';
import 'package:bookcade/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'book_preview.dart';
import 'book_title.dart';
import 'custom_like_button.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:20),
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            BookPreview(
              bookWidth: MediaQuery.of(context).size.width * .22,
              aspectRatioHight: 6,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BookTitle(title: 'Game Of Thrones Chapter one'),
                    Text(
                      'George R. R. Martin',
                      style: Style.text16.copyWith(color: whiteRed),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Free', style: Style.text18),
                        const Spacer(),
                        const LikeButton(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '5.0',
                            style: Style.text16,
                          ),
                        ),
                        Text('(100000)',
                            style: Style.text16.copyWith(
                                fontWeight: FontWeight.w100, color: whiteRed)),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
