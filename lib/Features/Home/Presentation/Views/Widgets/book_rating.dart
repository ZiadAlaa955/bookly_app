import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.averageraiting,
    required this.raitingCount,
  });
  final num averageraiting;
  final int raitingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(width: 6),
        Text(
          '$averageraiting',
          style: Styles.style16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 4),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($raitingCount)',
            style: Styles.style14.copyWith(fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
