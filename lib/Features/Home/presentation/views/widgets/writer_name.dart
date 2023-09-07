import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class WriterName extends StatelessWidget {
  const WriterName({
    super.key, this.fontSize, required this.authorName, this.maxLines,
  });
  final double? fontSize;
  final String authorName;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return  Text(textAlign: TextAlign.center,
      authorName,
        style: TextStyle(
            fontSize: fontSize?? 18, fontWeight: FontWeight.w300, color: whiteRed,fontStyle: FontStyle.italic),
             maxLines: maxLines?? 1,
        overflow: TextOverflow.ellipsis
            );
            
            
  }
}
