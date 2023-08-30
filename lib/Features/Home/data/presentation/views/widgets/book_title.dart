import 'package:flutter/material.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Text(title,
        style: const TextStyle(fontSize: 20),
        maxLines: 2,
        overflow: TextOverflow.ellipsis);
  }
}
