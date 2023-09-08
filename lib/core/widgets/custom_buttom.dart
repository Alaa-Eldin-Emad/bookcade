import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.textColor,
    required this.buttomColor,
    this.borderRadius, this.onPressed,
  });
  final String text;
  final Color? textColor;
  final Color buttomColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
            height: 45,
            child: TextButton(
              onPressed: onPressed,
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
