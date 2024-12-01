import 'package:flutter/material.dart';
import 'package:lab1/models/manga_model.dart';
import 'package:lab1/widgets/details_back.dart';
import 'package:lab1/widgets/manga_details_data.dart';
import 'package:lab1/widgets/manga_details_image.dart';
import 'package:lab1/widgets/manga_details_title.dart';
class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Manga;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            MangaDetailImage(image: arguments.img),
            MangaDetailTitle(id: arguments.id, name: arguments.name,),
            MangaDetailData(id: arguments.id,description:arguments.description,price:arguments.price),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}
