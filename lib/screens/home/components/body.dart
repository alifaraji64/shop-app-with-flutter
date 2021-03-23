import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories()
      ],
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> categories = [
    "hand bag",
    "jewelery",
    "footwear",
    "dresses",
    "gfdrfg",
    "fgdrfgd",
    "fedrgedrt",
    "tuoerir"
  ];
  final int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(categories[index]),
        ),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
