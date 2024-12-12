import 'package:bookly_app/Features/Home/Presentation/Views/book_details_view.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:bookly_app/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/HomeView',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/BookDetailsView',
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsView();
        },
      ),
    ],
  );
}
