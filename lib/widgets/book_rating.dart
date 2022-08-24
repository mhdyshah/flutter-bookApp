// ignore_for_file: prefer_const_constructors

import 'package:bookapp/constants.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final double score;

  const BookRating({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 20,
            color: Color(0xFFD3D3D3).withOpacity(0.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            Icons.star,
            color: kIconColor,
            size: 20,
          ),
          SizedBox(height: 5),
          Text(
            score.toString(),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
