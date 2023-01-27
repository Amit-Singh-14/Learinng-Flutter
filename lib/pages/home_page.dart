// ignore_for_file: use_key_in_widget_constructors
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/myroute.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';
import "package:http/http.dart" as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://api.npoint.io/647083e8b75e928ed381";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    //read kr rahe in the form of string
    // var catalogJson = await rootBundle.loadString("asests/files/catalog.json");

    var response = await http.get(Uri.parse(url));
    
    var catalogJson = response.body;
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
    final CartModel cart = (VxState.store as Mystore).cart;

    return Scaffold(
        backgroundColor: context.canvasColor,
        floatingActionButton: VxBuilder(
          mutations: {RemoveMutation, AddMutation},
          builder: (context, store, status) {
            return FloatingActionButton(
              onPressed: () =>
                  Navigator.pushNamed(context, MyRoutes.cartRoutes),
              // backgroundColor: context.accentColor,
              backgroundColor:
                  context.theme.floatingActionButtonTheme.backgroundColor,
              foregroundColor: Colors.white,
              child: Icon(CupertinoIcons.cart),
            ).badge(
                color: Vx.red500,
                size: 22,
                count: cart.items.length,
                textStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold));
          },
        ),
        //batary jaha show hoti hai uske niche se start krta h
        body: SafeArea(
          bottom: false,
          child: Container(
            padding: Vx.m24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items.isNotEmpty)
                  CatalogList().pOnly(top: 5, bottom: 30).expand()
                else
                  Center(child: CircularProgressIndicator()).expand()
              ],
            ),
          ),
        ));
  }
}
