import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_item.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomBooksListView(),
      ],
    );
  }
}
