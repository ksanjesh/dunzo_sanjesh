class MostPopular {
  String img;
  String name;
  String weight;
  int price;

  MostPopular(
      {required this.img,
      required this.name,
      required this.weight,
      required this.price});
}

class Category {
  String off;
  String img;
  String name;

  Category({
    required this.name,
    required this.img,
    required this.off,
  });
}

class Spotlight {
  String img;
  String name;
  String weight;
  int price;

  Spotlight({
    required this.img,
    required this.name,
    required this.weight,
    required this.price,
  });
}
