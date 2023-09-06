import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class WriterName extends StatelessWidget {
  const WriterName({
    super.key, this.fontSize, required this.authorName,
  });
  final double? fontSize;
  final String authorName;
  @override
  Widget build(BuildContext context) {
    return  Text(authorName,
        style: TextStyle(
            fontSize: fontSize?? 16, fontWeight: FontWeight.w300, color: whiteRed,fontStyle: FontStyle.italic),
             maxLines: 1,
        overflow: TextOverflow.ellipsis
            );
            
            
  }
}
