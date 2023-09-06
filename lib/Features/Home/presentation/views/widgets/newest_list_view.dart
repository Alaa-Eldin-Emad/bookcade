import 'package:flutter/material.dart';
import 'newest_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap:true ,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
      return const NewestItem();
    },            
    );
  }
}

