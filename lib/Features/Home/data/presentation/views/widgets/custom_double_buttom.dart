import 'package:flutter/material.dart';

class CustomDoubleButton extends StatelessWidget {
  const CustomDoubleButton({
    super.key,
    required this.text,
    this.textColor,
    required this.buttomColor,
    this.borderRadius,
  });
  final String text;
  final Color? textColor;
  final Color buttomColor;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
            height: 45,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: buttomColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: borderRadius ?? BorderRadius.circular(12))),
              child: Text(
                text,
                style: TextStyle(color: textColor??Colors.white, fontSize: 22),
              ),
            )));
  }
}
