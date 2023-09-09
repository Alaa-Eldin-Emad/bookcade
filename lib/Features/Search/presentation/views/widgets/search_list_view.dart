import 'package:bookcade/Features/Search/presentation/view_models/cubit/search_cubit.dart';
import 'package:bookcade/core/utils/assets.dart';
import 'package:bookcade/core/widgets/book_item.dart';
import 'package:bookcade/core/widgets/custom_error_msg.dart';
import 'package:bookcade/core/widgets/loading_indicator/list_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial){
          return Image.asset(AssetsData.searchImage,fit: BoxFit.fill,);
        }
        if (state is SearchSucsses) {
          SearchCubit.get(context).loading = false;
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BookItem(
                disposeController: () =>
                    SearchCubit.get(context).searchController.dispose(),
                bookModel: state.books[index],
              );
            },
          );
        } else if (state is SearchFailure) {
          return CustomErrorMsg(errorMsg: state.errorMsg);
        } else {
          return const ListLoadingIndicator();
        }
      },
    );
  }
}
