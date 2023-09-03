import 'package:flutter/material.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({
    super.key, required this.title, this.fontSize,
  });
  final String title;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return  Text(title,
        style:  TextStyle(fontSize: fontSize?? 20),
        maxLines: 2,
        overflow: TextOverflow.ellipsis);
  }
}
