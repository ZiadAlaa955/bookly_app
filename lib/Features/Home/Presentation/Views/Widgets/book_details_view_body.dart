import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_details_section.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book-details_app_bar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/similar_books_sction.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const SafeArea(
                child: CustomBookDetailsAppBar(),
              ),
              BookDetailsSection(
                bookModel: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 35,
                ),
              ),
              const SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}
