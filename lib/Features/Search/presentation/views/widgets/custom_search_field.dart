import 'package:bookcade/Features/Search/presentation/view_models/cubit/search_cubit.dart';
import 'package:bookcade/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
      child: CupertinoSearchTextField(
        suffixIcon: const Icon(Icons.menu_book,color: whiteRed,),
        focusNode:SearchCubit.get(context).focusSearch ,
        style: const TextStyle(color: whiteRed),
        controller: SearchCubit.get(context).searchController,
        onChanged: (value) {
          SearchCubit.get(context).loading=true;
          SearchCubit.get(context).inputText = value;
          if (SearchCubit.get(context).inputText == '') {
            SearchCubit.get(context).searchController.clear();
          }
          SearchCubit.get(context).searchForBooks(
              searchBy: SearchCubit.get(context).inputText ?? '');
        },
        prefixIcon: const Icon(
          Icons.search,
          size: 25,
          color: whiteRed,
        ),
        padding: const EdgeInsets.all(10),
        placeholderStyle: const TextStyle(fontSize: 20, color: whiteRed),
      ),
    );
  }
}
