import 'package:flutter/material.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({
    super.key, required this.title, this.fontSize, this.textAlign,
  });
  final String title;
  final double? fontSize;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(title,textAlign: textAlign,
            style:  TextStyle(fontSize: fontSize?? 20),
            maxLines: 2,
            overflow: TextOverflow.ellipsis);
      
    
  }
}
