import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Product.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 15),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: product.color),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/add_to_cart.svg',
              color: product.color,
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: FlatButton(
            height: 40,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {},
            child: Text(
              'BUY NOW',
              style: TextStyle(color: Colors.white),
            ),
            color: product.color,
          ),
        )
      ],
    );
  }
}
