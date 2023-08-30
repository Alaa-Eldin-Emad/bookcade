import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'books_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAppBar(
            iconOnPressed: () {},
          ),
          const BooksListView(),
          const Padding(
            padding:  EdgeInsets.only(top: 20,left: 10,bottom: 10),
            child: Text('Best seller',textAlign: TextAlign.left,style: TextStyle(fontSize: 24),),
          ),
          const BestSellerListView(),
        ],
      ),
    );
  }
}

