import 'package:flutter/material.dart';

class MangaDetailImage extends StatelessWidget {
  final String image;

  const MangaDetailImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.red, width: 2)),
      child: Image.network(image, fit: BoxFit.fill, alignment: Alignment.center),
    );
  }
}

