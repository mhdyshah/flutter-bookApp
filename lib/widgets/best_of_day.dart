// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookapp/constants.dart';
import 'package:bookapp/widgets/book_rating.dart';
import 'package:bookapp/widgets/two_side_button.dart';
import 'package:flutter/material.dart';

class BestOfTheDay extends StatelessWidget {
  const BestOfTheDay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding:
                  EdgeInsets.only(left: 24, top: 24, right: size.width * 0.3),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(0.45),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New York Time Best For 11th March 2022",
                    style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "How To Win \nFriends & Influence",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Gary Venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      BookRating(score: 4.9),
                      SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people...",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            // this top: 0, right: 0 for image and for above left: 0, bottom: 0 make our card look like this(look at card and book position)
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/book-3.png",
              width: size.width * 0.37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .28,
              child: TwoSideRoundedBottom(
                text: "Read",
                press: () {},
                radius: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
