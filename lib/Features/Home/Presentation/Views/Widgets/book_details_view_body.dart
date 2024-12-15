import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_details_section.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book-details_app_bar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/similar_books_sction.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SafeArea(
                child: CustomBookDetailsAppBar(),
              ),
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 35,
                ),
              ),
              SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}
