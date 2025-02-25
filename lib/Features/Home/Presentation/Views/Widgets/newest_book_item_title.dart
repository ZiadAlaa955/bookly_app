import 'package:bookly_app/Core/Utils/constants.dart';
import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_rating.dart';
import 'package:flutter/material.dart';

class NewestBookItemTitle extends StatelessWidget {
  const NewestBookItemTitle({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bookModel.volumeInfo.title ?? '',
          style: Styles.style20.copyWith(
            fontFamily: kGtSectraFine,
            fontWeight: FontWeight.normal,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 3),
        Text(
          bookModel.volumeInfo.authors?[0] ?? "UnKnown",
          style: Styles.style14.copyWith(
            color: const Color(0xffB7B6BC),
          ),
        ),
        const SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Free', style: Styles.style20),
            BookRating(
              averageraiting: bookModel.volumeInfo.averageRating ?? 0,
              raitingCount: bookModel.volumeInfo.ratingsCount ?? 0,
            ),
          ],
        ),
      ],
    );
  }
}
