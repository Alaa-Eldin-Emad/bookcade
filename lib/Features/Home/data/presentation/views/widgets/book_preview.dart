import 'package:bookcade/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookPreview extends StatelessWidget {
  const BookPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.35,
        child: AspectRatio(
          aspectRatio: 2 / 4,
          child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testImage)),
                  borderRadius: BorderRadius.circular(16))),
        ),
      ),
    );
  }
}
