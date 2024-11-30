class Manga {
  int id;
  String name;
  String img;

  Manga({required this.id, required this.name, required this.img});

  Manga.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        img = data['img'];
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'img': img};
}