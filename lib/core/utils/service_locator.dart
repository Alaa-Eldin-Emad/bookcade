import 'package:bookcade/Features/Home/data/repositories/home_repo_implementation.dart';
import 'package:bookcade/core/API/api.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

 GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<API>(API(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
    getIt.get<API>(),
  ));
}