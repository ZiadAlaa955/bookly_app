import 'package:bookly_app/Core/Utils/api_service.dart';
import 'package:bookly_app/Features/Home/Data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/Search/Data/Repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(
    ApiService(dio: Dio()),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(apiService: getIt.get<ApiService>()),
  );

  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(apiService: getIt.get<ApiService>()),
  );
}
