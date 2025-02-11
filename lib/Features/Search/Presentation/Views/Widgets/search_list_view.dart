import 'package:bookly_app/Core/Widgets/error_message.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/newest_books_listview_item.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/similar_books_list_view.dart';
import 'package:bookly_app/Features/Search/Presentation/Manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return NewestBooksListViewItem(bookModel: state.books[index]);
            },
          );
        } else if (state is SearchBooksFailure) {
          return ErrorMessage(errorMessage: state.errorMessage);
        } else if (state is SearchBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Text('');
        }
      },
    );
  }
}
