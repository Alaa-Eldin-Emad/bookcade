import 'package:bookcade/Features/Search/presentation/view_models/cubit/search_cubit.dart';
import 'package:bookcade/Features/Search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_search_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => SearchCubit.get(context).focusSearch.unfocus(),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: BackButton(onPressed: () {
                            SearchCubit.get(context).searchController.dispose();
                            Get.back();
                          })),
                      const CustomSearchField(),
                      const SearchListView(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
