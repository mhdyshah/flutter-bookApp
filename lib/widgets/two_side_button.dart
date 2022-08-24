// ignore_for_file: prefer_const_constructors

import 'package:bookapp/constants.dart';
import 'package:flutter/material.dart';

class TwoSideRoundedBottom extends StatelessWidget {
  final String text;
  final double radius;
  final VoidCallback press;
  const TwoSideRoundedBottom({
    Key? key,
    required this.text,
    this.radius = 30,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
