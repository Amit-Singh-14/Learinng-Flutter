class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "23",
      name: "amit singh",
      desc: "asdasdass",
      price: 1000,
      color: "#asdasd",
      image: "image url")
];
