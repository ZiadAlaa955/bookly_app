import 'package:bookly_app/Core/Utils/service_locator.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/book_details_view.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:bookly_app/Features/Search/Data/Repos/search_repo_impl.dart';
import 'package:bookly_app/Features/Search/Presentation/Manager/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/search_view.dart';
import 'package:bookly_app/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String kHomeView = '/HomeView';
  static String kBookDetailsView = '/BookDetailsView';
  static String kSearchView = '/SearchView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) =>
            const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>()),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
