import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 20,
        (context, index) {
          return const BestSellerListViewItem();
        },
      ),
    );
  }
}
