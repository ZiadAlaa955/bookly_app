import 'package:bookly_app/Core/Errors/failure.dart';
import 'package:bookly_app/Core/Widgets/circular_indicator.dart';
import 'package:bookly_app/Core/Widgets/error_message.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: CustomBookItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CircularIndicator();
        }
      },
    );
  }
}
