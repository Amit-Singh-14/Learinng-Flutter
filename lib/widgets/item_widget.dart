import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;
  const ItemWidgets({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    //card se ek box ajsia ban jata h
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.id}");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        //trailing se end mai a jata h
        trailing: Text(
          "\$${item.price.toString()}",
          textScaleFactor: 1.3,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
