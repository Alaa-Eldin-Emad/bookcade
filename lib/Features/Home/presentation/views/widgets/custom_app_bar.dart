import 'package:bookcade/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.iconOnPressed,
    super.key,
    this.actionIcon,
    this.leadingIcon,
  });
  final VoidCallback iconOnPressed;
  final Icon? actionIcon;
  final IconData? leadingIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 40, 16, 5),
      child: Row(
        children: [
          leadingIcon!=null?IconButton(onPressed: (){Get.back();}, icon: Icon(leadingIcon,size: 32,) ):
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
