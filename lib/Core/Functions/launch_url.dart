import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    launchUrl(uri);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Cannot open $url'),
      ),
    );
  }
}
