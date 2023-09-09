import 'package:bookcade/Features/Search/data/repositories/search_repo_implementation.dart';
import 'package:bookcade/Features/Search/presentation/view_models/cubit/search_cubit.dart';
import 'package:bookcade/Features/Search/presentation/views/widgets/search_view_body.dart';
import 'package:bookcade/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => SearchCubit(getIt.get<SearchRepoImplementation>()),
      child: const SearchViewBody(),
    );
  }
}
