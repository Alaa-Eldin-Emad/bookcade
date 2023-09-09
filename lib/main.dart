import 'package:bookcade/Features/Home/data/repositories/home_repo_implementation.dart';
import 'package:bookcade/Features/Home/presentation/view_models/featured_books_cubit/fetch_books_cubit.dart';
import 'package:bookcade/Features/Home/presentation/view_models/newest_books_cubit/fetch_newst_books_cubit.dart';
import 'package:bookcade/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookcade/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const BookCade());
}

class BookCade extends StatelessWidget {
  const BookCade({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => FetchBooksCubit(getIt.get<HomeRepoImplementation>())..featchBooks(),),
      BlocProvider(create: (context) => FetchNewstBooksCubit(getIt.get<HomeRepoImplementation>())..featchNewestBooks(),)
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor,textTheme:  GoogleFonts.dmSerifDisplayTextTheme(ThemeData.dark().textTheme)),
        navigatorKey: Get.key,
        home: const SplashView(),
      ),
    );
  }
}
