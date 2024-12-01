import 'package:flutter/material.dart';
import 'package:lab1/models/manga_model.dart';
import 'package:lab1/widgets/manga_card_data.dart';

class MangaCard extends StatelessWidget {
  final int id;
  final String name;
  final String description;
  final int price;
  final String image;

  const MangaCard({super.key, required this.id, required this.name, required this.description,required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Manga(id: id, name: name,description: description,price: price, img: image))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 3),
              borderRadius: BorderRadius.circular(10)
          ),
          child: MangaCardData(image: image, name: name),
        ),
      ),
    );
  }
}
