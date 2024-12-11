import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: 50, bottom: 35),
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
