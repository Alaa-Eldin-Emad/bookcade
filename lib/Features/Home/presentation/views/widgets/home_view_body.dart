import 'package:bookcade/Features/Search/presentation/views/search_view.dart';
import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'newest_list_view.dart';
import 'books_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAppBar(
            iconOnPressed: () {Get.to(()=> const SearchView(),transition: Transition.fade,duration: transtionsDuration);},
          ),
          const BooksListView(),
          const Padding(
            padding:  EdgeInsets.only(top: 20,left: 10,bottom: 10),
            child: Text('Best seller',textAlign: TextAlign.left,style: TextStyle(fontSize: 24),),
          ),
          const NewestListView(),
        ],
      ),
    ),],),
    );
    
  }
}

