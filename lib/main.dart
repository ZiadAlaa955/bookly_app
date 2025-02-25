import 'package:bookly_app/Core/Utils/app_routes.dart';
import 'package:bookly_app/Core/Utils/app_theme_data.dart';
import 'package:bookly_app/Core/Utils/service_locator.dart';
import 'package:bookly_app/Features/Home/Data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();

  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: appThemeData(),
      ),
    );
  }
}
