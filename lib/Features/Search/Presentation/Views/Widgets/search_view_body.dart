import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Search/Presentation/Manager/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/Widgets/custom_text_filed.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/Widgets/search_list_view.dart';
import 'package:bookly_app/Core/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(
          left: kPadding - 5, right: kPadding - 5, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            controller: controller,
            onTap: () {
              if (controller.text.isNotEmpty) {
                SearchBooksCubit searchBooksCubit =
                    BlocProvider.of<SearchBooksCubit>(context);
                searchBooksCubit.fetchSearchedBooks(name: controller.text);
              }
            },
            onChanged: (bookName) {
              if (bookName.isNotEmpty) {
                SearchBooksCubit searchBooksCubit =
                    BlocProvider.of<SearchBooksCubit>(context);
                searchBooksCubit.fetchSearchedBooks(name: bookName);
              }
            },
          ),
          const SizedBox(height: 10),
          const Text('Newest Books', style: Styles.style18),
          const SizedBox(height: 10),
          const Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
