import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/best_seller_sliver_list.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/custom_books_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              CustomBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: kPadding),
                child: Text(
                  'Best Seller',
                  style: Styles.style18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        BestSellerSliverList(),
      ],
    );
  }
}
