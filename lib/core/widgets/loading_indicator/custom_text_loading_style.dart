import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'custom_image_loading_style.dart';

class TextLoading extends StatelessWidget {
  const TextLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: Row(
          children: [
            const ImageLoading(),
            SizedBox(
              width: MediaQuery.of(context).size.width * .65,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 0, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   
                    const SizedBox(
                      height: 5,
                    ),
                    Container(height: 30,width: MediaQuery.of(context).size.width * .55, decoration: BoxDecoration(color: shimmerBaseColor,borderRadius: BorderRadius.circular(16)),),
                    const SizedBox(height: 5,),
                    Container(height: 20,width: MediaQuery.of(context).size.width * .5, decoration: BoxDecoration(color: shimmerBaseColor,borderRadius: BorderRadius.circular(16)),),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(height: 25,width: 60, decoration: BoxDecoration(color: shimmerBaseColor,borderRadius: BorderRadius.circular(16)),),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}