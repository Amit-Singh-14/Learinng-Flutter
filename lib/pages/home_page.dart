// ignore_for_file: use_key_in_widget_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    //read kr rahe in the form of string
    var catalogJson = await rootBundle.loadString("asests/files/catalog.json");
    // string form mai aya mai toh isko map mai convert kr rahe
    var decodedData = jsonDecode(catalogJson);
    // bass product wala cahiye
    var productsData = decodedData["products"];
    // list bana raahe haai beacuse hum list ma show kr rahe h
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //dumy list bana rahee h check krne ke lieye
    // final dumyList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:  CatalogModel.items.isNotEmpty ? ListView.builder(
          //itemcount : Catalogwidget.items.length
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidgets(item: CatalogModel.items[index]);
          },
        ) : Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
