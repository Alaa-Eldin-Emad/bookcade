import 'package:bookcade/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomErrorMsg extends StatelessWidget {
  const CustomErrorMsg({super.key, required this.errorMsg});
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMsg,
      style: Style.text18,
    );
  }
}
