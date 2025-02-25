import 'package:bookly_app/Core/Utils/app_routes.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Core/Utils/constants.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/newest_book_item_title.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRoutes.kBookDetailsView,
          extra: bookModel,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: kPadding, top: 10, bottom: 10),
        child: Row(
          children: [
            SizedBox(
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: CachedNetworkImage(
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                    color: Colors.red[800],
                  ),
                  fit: BoxFit.fill,
                  imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: NewestBookItemTitle(bookModel: bookModel),
            ),
          ],
        ),
      ),
    );
  }
}
