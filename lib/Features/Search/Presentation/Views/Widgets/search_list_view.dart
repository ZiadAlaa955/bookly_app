import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/newest_books_listview_item.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        // return const BestSellerListViewItem();
      },
    );
  }
}
