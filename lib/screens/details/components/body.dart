import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import './product_title_with_image.dart';
import 'colors_size.dart';
import 'counter_heart.dart';
import 'buttons.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                ProductTitleWithImage(product: widget.product),
                Container(
                  margin: EdgeInsets.only(top: size.height / 3),
                  height: 500,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Column(children: [
                      ColorSize(product: widget.product),
                      Text(
                        '\n \n' + dummyText + '\n \n',
                        style: TextStyle(height: 1.6),
                      ),
                      CounterHeart(),
                      SizedBox(
                        height: 30,
                      ),
                      Buttons(
                        product: widget.product,
                      )
                    ]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
