import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/Widgets/custom_text_filed.dart';
import 'package:bookly_app/Features/Search/Presentation/Views/Widgets/search_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
          EdgeInsets.only(left: kPadding - 5, right: kPadding - 5, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          SizedBox(height: 10),
          Text(
            'Best Seller',
            style: Styles.style18,
          ),
          SizedBox(height: 10),
          Expanded(
            child: SearchListView(),
          ),
        ],
      ),
    );
  }
}
