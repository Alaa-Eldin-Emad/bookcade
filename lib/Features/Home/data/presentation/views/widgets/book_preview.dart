import 'package:bookcade/Features/Home/data/presentation/views/book_details.dart';
import 'package:bookcade/constants.dart';
import 'package:bookcade/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookPreview extends StatelessWidget {
  const BookPreview({
    super.key,  this.bookWidth, this.aspectRatioHight,
  });
  final double? bookWidth;
  final double? aspectRatioHight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GestureDetector(onTap: () => Get.to(()=> const BookDetailsView(),transition: Transition.fade,duration: transtionsDuration),
        child: SizedBox(
          width: bookWidth?? MediaQuery.of(context).size.width * .35,
          child: AspectRatio(
            aspectRatio: 2 / (aspectRatioHight?? 4),
            child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AssetsData.testImage)),
                    borderRadius: BorderRadius.circular(16))),
          ),
        ),
      ),
    );
  }
}