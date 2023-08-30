import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child:  const Icon(Icons.star,color:Colors.amber ) ,onTap: (){});
  }
}