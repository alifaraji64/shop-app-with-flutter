import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CounterHeart extends StatefulWidget {
  @override
  _CounterHeartState createState() => _CounterHeartState();
}

class _CounterHeartState extends State<CounterHeart> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            OutlinedButton(
              child: new Text(
                "-",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey[600],
                ),
              ),
              onPressed: () {
                setState(() {
                  if (num > 0) {
                    num--;
                  }
                });
              },
            ),
            Text(
              '  ${num < 9 ? "0" + num.toString() : num}  ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            OutlinedButton(
              child: new Text(
                "+",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                setState(() {
                  num++;
                });
              },
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: SvgPicture.asset(
            'assets/icons/heart.svg',
          ),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(35))),
        )
      ],
    );
  }
}
