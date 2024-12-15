import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/Widgets/custom_text_filed.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/Widgets/search_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding - 5, vertical: 15),
          child: CustomTextField(),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding - 5),
          child: Text(
            'Best Seller',
            style: Styles.style18,
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: SearchListView(),
        ),
      ],
    );
  }
}
