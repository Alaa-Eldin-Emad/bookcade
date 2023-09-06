import 'package:bookcade/Features/Home/presentation/view_models/newest_books_cubit/fetch_newst_books_cubit.dart';
import 'package:bookcade/core/widgets/custom_error_msg.dart';
import 'package:bookcade/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'newest_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewstBooksCubit, FetchNewstBooksState>(
      builder: (context, state) {
        if (state is FetchNewstBooksSucsses) {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    itemCount: state.books.length,
    itemBuilder: (context, index) {
      return  NewestItem(bookModel: state.books[index],);
    },
  );
}
else if (state is FetchNewstBooksFailure){
  return CustomErrorMsg(errorMsg: state.errorMsg);
}
else {
  return const LoadingIndicator();
}
      },
    );
  }
}
