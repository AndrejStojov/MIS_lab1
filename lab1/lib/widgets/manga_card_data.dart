
import 'package:flutter/material.dart';

class MangaCardData extends StatelessWidget {
  final String image;
  final String name;

  const MangaCardData({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.network(image, fit: BoxFit.contain, alignment: Alignment.center)),
        const Divider(),
        Text("${name}",
          style: const TextStyle(fontSize: 21, color: Colors.black87),
        ),
      ],
    );
  }
}
