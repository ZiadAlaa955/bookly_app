import 'package:bookly_app/Core/Utils/app_routes.dart';
import 'package:bookly_app/Core/Widgets/error_message.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: kPadding),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRoutes.kBookDetailsView,
                          extra: state.books[index],
                        );
                      },
                      child: CustomBookItem(
                        imageUrl:
                            state.books[index].volumeInfo.imageLinks.thumbnail,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
