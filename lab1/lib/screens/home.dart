import 'package:flutter/material.dart';
import 'package:lab1/models/manga_model.dart';
import 'package:lab1/widgets/manga_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Manga> manga = [
    Manga(id: 1, name: "One piece", img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj13Tc4MZaNERfp7Xah4MW6UT7krg0P8H89A&s'),
    Manga(id: 2, name: "Naruto", img: 'https://i.pinimg.com/474x/a5/ac/65/a5ac65849901c6294fbc3f0c46d1fa94.jpg'),
    Manga(id: 4, name: "Jojo's bizarre adventure", img: 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781974708109/jojos-bizarre-adventure-part-4-diamond-is-unbreakable-vol-4-9781974708109_hr.jpg'),
    Manga(id: 5, name: "Chainsawman", img: 'https://static.wikia.nocookie.net/chainsaw-man/images/0/0f/Volume_01.png/revision/latest/scale-to-width-down/1200?cb=20230907225315')
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueGrey,
          leading: IconButton(onPressed: () {},
              icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
          title: const Text("Manga App", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {},
                icon: const Icon(Icons.settings, color: Colors.white, size: 24))
          ],
        ),
      body: MangaGrid(manga: manga),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}
