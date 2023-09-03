import 'package:flutter/material.dart';
import '../../../../../../constants.dart';

class WriterName extends StatelessWidget {
  const WriterName({
    super.key, this.fontSize,
  });
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return  Text('George R. R. Martin',
        style: TextStyle(
            fontSize: fontSize?? 16, fontWeight: FontWeight.w300, color: whiteRed,fontStyle: FontStyle.italic));
  }
}
