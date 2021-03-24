import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

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
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemBuilder: (context, index) => buildCategory(index),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              categories[index],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 4,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
