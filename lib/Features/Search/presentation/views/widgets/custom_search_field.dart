import 'package:bookcade/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 20),
      child: CupertinoSearchTextField(
        prefixIcon: Icon(
          Icons.search,
          size: 25,
          color: whiteRed,
        ),
        padding: EdgeInsets.all(10),
        placeholderStyle: TextStyle(fontSize: 20, color: whiteRed),
      ),
    );
  }
}
