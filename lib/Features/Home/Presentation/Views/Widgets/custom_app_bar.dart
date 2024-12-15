import 'package:bookly_app/Core/Utils/app_routes.dart';
import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: kPadding, right: kPadding - 10, top: 20, bottom: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(
            image: AssetImage(AssetsData.logo),
            height: 24,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.kSearchView);
            },
            icon: Image.asset(AssetsData.searctIcon),
            iconSize: 35,
          ),
        ],
      ),
    );
  }
}
