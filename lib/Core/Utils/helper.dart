import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Available';
  } else {
    return 'Preview';
  }
}

OutlineInputBorder buildInputBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(14),
    ),
  );
}
