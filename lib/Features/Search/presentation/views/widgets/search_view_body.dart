import 'package:bookcade/Features/Home/data/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_search_field.dart';

class SearrchViewBody extends StatelessWidget {
  const SearrchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(alignment: Alignment.topLeft, child: BackButton()),
              CustomSearchField(),
              BestSellerListView(),
            ],
          ),
        ),
      ),
    );
  }
}

