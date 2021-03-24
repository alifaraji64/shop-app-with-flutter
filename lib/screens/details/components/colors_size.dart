import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

class ColorSize extends StatelessWidget {
  const ColorSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Color',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            //three dots
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            Text(
              'Size',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              product.size.toString() + ' cm',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Text('')
      ],
    );
  }
}
