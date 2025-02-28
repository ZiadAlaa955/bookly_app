import 'package:bookly_app/Core/Widgets/newest_books_shimmer_loading.dart';
import 'package:bookly_app/Core/Widgets/error_message.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/newest_books_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksSliverList extends StatelessWidget {
  const NewestBooksSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) {
                return NewestBooksListViewItem(bookModel: state.books[index]);
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: ErrorMessage(errorMessage: state.errorMessage),
          );
        } else {
          return const NewestBooksShimmerLoading();
        }
      },
    );
  }
}
