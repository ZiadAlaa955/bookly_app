import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6,
        ),
        const Text(
          '4.8',
          style: Styles.style16,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '(2390)',
          style: Styles.style14.copyWith(
            fontWeight: FontWeight.normal,
            color: const Color(0xff707070),
          ),
        )
      ],
    );
  }
}
