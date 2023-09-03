import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          iconOnPressed: () {},
          leadingIcon: Icons.close,
          actionIcon: const Icon(
            Icons.shopping_cart_checkout,
            size: 32,
          ),
        )
      ],
    );
  }
}
