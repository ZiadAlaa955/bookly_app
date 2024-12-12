import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
          EdgeInsets.only(left: kPadding, right: kPadding, top: 20, bottom: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(AssetsData.logo),
            height: 24,
          ),
          Image(
            image: AssetImage(AssetsData.searctIcon),
            height: 35,
          ),
        ],
      ),
    );
  }
}
