import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/books_action_button.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .27),
          child: CustomBookItem(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.style30.copyWith(fontFamily: kGtSectraFine),
          textAlign: TextAlign.center,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? 'Unknown',
            style: Styles.style18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: BooksActionButton(
            bookModel: bookModel,
          ),
        ),
      ],
    );
  }
}
