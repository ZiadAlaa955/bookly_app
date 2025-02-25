import 'package:flutter/material.dart';

class CustomNewestBooksShimemrLoadingItem extends StatelessWidget {
  const CustomNewestBooksShimemrLoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Container(height: 120, width: 100, color: Colors.white),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.57,
                height: 16.0,
                color: Colors.white,
              ),
              const SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width * 0.51,
                height: 16.0,
                color: Colors.white,
              ),
              const SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: 14.0,
                color: Colors.white,
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ],
    );
  }
}
