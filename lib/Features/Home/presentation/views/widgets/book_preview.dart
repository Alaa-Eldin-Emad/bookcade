import 'package:bookcade/core/model/book_model/book_model.dart';
import 'package:bookcade/Features/Home/presentation/views/book_details.dart';
import 'package:bookcade/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class BookPreview extends StatelessWidget {
  const BookPreview({
    super.key,
    this.bookWidth,
    this.aspectRatioHight, required this.imageURL, this.bookModel, 
  });
  final double? bookWidth;
  final double? aspectRatioHight;
  final String imageURL;
  final BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GestureDetector(
        onTap: () => Get.to(() =>  BookDetailsView(bookModel: bookModel!),
            transition: Transition.fade, duration: transtionsDuration),
        child: SizedBox(
          width: bookWidth ?? MediaQuery.of(context).size.width * .45,
          child:ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
        aspectRatio: 2.6 / (aspectRatioHight ?? 4),
        child: CachedNetworkImage(
          placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: shimmerBaseColor,
                      highlightColor: shimmerhighlightColor,
                      child: Container(color: Colors.grey.shade400),
          ),
          fit: BoxFit.fill,
          imageUrl: imageURL,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
          ),
        ),
            ),
          ),
          ),
        // ),
    ),
    );
  }
}
