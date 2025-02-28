import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/newest_books_sliver_list.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/featured_books_list_view.dart';
import 'package:bookly_app/Core/Utils/constants.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: kPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(child: CustomAppBar()),
                FeaturedBooksListView(),
                SizedBox(height: 50),
                Text('Newest Books', style: Styles.style18),
                SizedBox(height: 5),
              ],
            ),
          ),
          NewestBooksSliverList(),
        ],
      ),
    );
  }
}
