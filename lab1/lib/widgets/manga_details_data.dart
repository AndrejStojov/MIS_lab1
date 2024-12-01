import 'package:flutter/material.dart';

class MangaDetailData extends StatelessWidget {
  final int id;
  final String description;
  final int price;

  const MangaDetailData({
    super.key,
    required this.id,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 2, color: Colors.grey)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(71),
          topRight: Radius.circular(71),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Centers vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Centers horizontally
        children: [
          const SizedBox(height: 20),
          Text(
            "Price: \$${price.toString()}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center, // Center text inside the widget
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center, // Center text inside the widget
          ),
        ],
      ),
    );
  }
}
