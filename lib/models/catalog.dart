class CatalogModel {

  // ye sname h List<Item>
  static List<Item> items = [];

  //get Item by ID;
   Item getById(int id) => items.firstWhere((element) => element.id == id);

  // get item by postion
   Item getByPosition(int pos) => items[pos];
}

// model h ki kaise data store hoga
class Item {
  final int id;
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

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
