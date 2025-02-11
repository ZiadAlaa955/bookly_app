import 'package:bookly_app/Core/Utils/app_routes.dart';
import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:bookly_app/Core/Widgets/newest_books_shimmer_loading.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/book_rating.dart';
import 'package:bookly_app/constants.dart';
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
        GoRouter.of(context).push(AppRoutes.kBookDetailsView, extra: bookModel);
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
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                  ),
                  fit: BoxFit.fill,
                  imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.57,
                    child: Text(
                      bookModel.volumeInfo.title ?? '',
                      style: Styles.style20.copyWith(
                        fontFamily: kGtSectraFine,
                        fontWeight: FontWeight.normal,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors?[0] ?? "UnKnown",
                    style: Styles.style14.copyWith(
                      color: const Color(0xffB7B6BC),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Free',
                        style: Styles.style20,
                      ),
                      const Spacer(),
                      BookRating(
                        averageraiting: bookModel.volumeInfo.averageRating ?? 0,
                        raitingCount: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
