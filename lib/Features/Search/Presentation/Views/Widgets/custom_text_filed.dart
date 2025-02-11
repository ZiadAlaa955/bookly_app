import 'package:bookly_app/Core/Utils/assets.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.onChanged,
      required this.onTap,
      required this.controller});
  final Function(String)? onChanged;
  final Function()? onTap;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(AssetsData.searctIcon),
          ),
        ),
        hintText: 'Search a book',
        enabledBorder: buildInputBorder(),
        focusedBorder: buildInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    );
  }
}
