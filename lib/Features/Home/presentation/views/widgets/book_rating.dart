import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment:MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            '5.0',
            style: Style.text16,
          ),
        ),
        Text(
          '(100000)',
          style: Style.text16
              .copyWith(fontWeight: FontWeight.w100, color: whiteRed),
        ),
      ],
    );
  }
}
