import 'package:flutter_application_1/models/catalog.dart';

class CartModel {
  //Catalog Feild
  late CatalogModel _catalog;

  //collection of id store ids of each item

  final List<int> _itemids = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //get items in the cart;
  List<Item> get items => _itemids.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemids.add(item.id);
  }


  void remove(Item item) {
    _itemids.remove(item.id);
  }
}
