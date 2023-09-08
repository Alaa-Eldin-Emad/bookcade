import 'package:bookcade/core/utils/assets.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.iconOnPressed,
    super.key,
    this.actionIcon,

  });
  final VoidCallback iconOnPressed;
  final Icon? actionIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 40, 16, 5),
      child: Row(
        children: [
              Image.asset(
                AssetsData.appLogo,
                height: 50,
                width: 50,
              ),
          const Spacer(),
          IconButton(
            onPressed: iconOnPressed,
            icon: actionIcon ??
                const Icon(
                  Icons.search,
                  size: 34,
                ),
          ),
        ],
      ),
    );
  }
}
