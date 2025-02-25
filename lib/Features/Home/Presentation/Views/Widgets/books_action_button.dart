import 'package:bookly_app/Core/Functions/launch_url.dart';
import 'package:bookly_app/Core/Utils/helper.dart';
import 'package:bookly_app/Core/Widgets/custom_text_button.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomTextButton(
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomTextButton(
            onPressed: () async {
              launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
            },
            text: getText(bookModel),
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            fontSize: 15,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}
