import 'package:bookly_app/Core/Widgets/custom_newest_books_shimmer_loading_item.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FeaturedBooksShimmerLoading extends StatelessWidget {
  const FeaturedBooksShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
