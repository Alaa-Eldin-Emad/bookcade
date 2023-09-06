import 'package:bookcade/Features/Home/data/repositories/home_repo_implementation.dart';
import 'package:bookcade/core/API/api.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<API>(
      API(
        Dio(),
      ),
  );
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      getIt.get<API>(),
    ),
  );
}
