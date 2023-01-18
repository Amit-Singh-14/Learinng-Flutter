import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //dumy list bana rahee h check krne ke lieye
    final dumyList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          //itemcount : Catalogwidget.items.length
          itemCount: dumyList.length,
          itemBuilder: (context, index) {
            return ItemWidgets(item: dumyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
