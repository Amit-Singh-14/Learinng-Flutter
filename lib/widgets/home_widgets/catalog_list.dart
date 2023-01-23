import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_details_page.dart';
import '../../models/catalog.dart';
import 'catalog_items.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailPage(catalog: catalog),
                ),
              )),
          child: CatalogItem(
            catalog: catalog,
          ),
        );
      },
    );
  }
}
