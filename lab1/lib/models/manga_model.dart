class Manga {
  int id;
  String name;
  String description;
  int price;
  String img;

  Manga({required this.id, required this.name,required this.description,required this.price, required this.img});

  Manga.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        description=data['description'],
        price=data['price'],
        img = data['img'];
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'img': img};
}