import 'package:bookly_app/Core/Widgets/custom_newest_books_shimmer_loading_item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewestBooksShimmerLoading extends StatelessWidget {
  const NewestBooksShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 3,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: const CustomNewestBooksShimemrLoadingItem(),
            ),
          );
        },
      ),
    );
  }
}
