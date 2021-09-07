

import 'package:flutter/material.dart';

import '../constants.dart';

class Button extends StatelessWidget {
  const Button({
    Key key,
    @required this.size, this.title, this.press,
  }) : super(key: key);

  final Size size;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.06,
        decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            title,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}