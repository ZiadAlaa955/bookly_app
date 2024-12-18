import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kPadding),
      child: Text(
        errorMessage,
        style: Styles.style18.copyWith(
          color: Colors.red,
        ),
      ),
    );
  }
}
