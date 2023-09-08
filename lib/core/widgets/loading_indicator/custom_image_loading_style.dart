import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageLoading extends StatelessWidget {
  const ImageLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child:SizedBox(
          width: MediaQuery.of(context).size.width * .22,
          child:ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
        aspectRatio: 2.6 / 6,
        child: Shimmer.fromColors(
            baseColor: shimmerBaseColor,
            highlightColor: shimmerhighlightColor,
            child: Container(decoration: BoxDecoration(color: shimmerBaseColor,borderRadius: BorderRadius.circular(16)),),
          ),
        ),
            ),
          ),
          );
  }
}
