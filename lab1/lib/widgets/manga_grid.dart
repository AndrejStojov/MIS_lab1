import 'package:flutter/material.dart';
import 'package:lab1/models/manga_model.dart';
import 'package:lab1/widgets/manga_card.dart';

class MangaGrid extends StatefulWidget {
  final List<Manga> manga;
  const MangaGrid({super.key, required this.manga});
  @override
  _MangaGridState createState() => _MangaGridState();
}
class _MangaGridState extends State<MangaGrid> {
  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 1,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.manga.map((manga) =>
          MangaCard(id: manga.id, name: manga.name,description: manga.description,price: manga.price, image: manga.img),
      ).toList(),
    );
  }
}
