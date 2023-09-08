import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key, this.height, this.bookWidth}) : super(key: key);
  final double? height;
  final double? bookWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: height?? MediaQuery.of(context).size.height * .37,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: SizedBox(width: bookWidth?? MediaQuery.of(context).size.width * .4,
                child: AspectRatio(
                  aspectRatio: 2.4 / 4,
                  child: Shimmer.fromColors(
                      baseColor: shimmerBaseColor,
                      highlightColor: shimmerhighlightColor,
                      child: Container(
                        decoration: BoxDecoration(
                            color: shimmerBaseColor,
                            borderRadius: BorderRadius.circular(16)),
                      )),
                ),
              ),
            );
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
