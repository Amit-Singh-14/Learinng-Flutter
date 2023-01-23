import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../theme.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkBlusidhColor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
