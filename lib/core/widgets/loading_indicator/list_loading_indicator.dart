import 'package:flutter/material.dart';

import 'custom_text_loading_style.dart';

class ListLoadingIndicator extends StatelessWidget {
  const ListLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    itemCount: 10,
    itemBuilder: (context, index) {
      return  const Padding(
      padding:  EdgeInsets.only(bottom: 10),
      child: TextLoading(),
      
    );
    },
  );
  }
}



