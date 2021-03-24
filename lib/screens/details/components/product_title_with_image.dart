import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import '../../../models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic hand bag",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            product.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      'price',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Text(
                    "\$" + product.price.toString(),
                    style: TextStyle(
                        fontSize: defaultPadding,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              FittedBox(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                  height: 220,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
