// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookapp/constants.dart';
import 'package:bookapp/widgets/best_of_day.dart';
import 'package:bookapp/widgets/book_cards.dart';
import 'package:bookapp/widgets/book_rating.dart';
import 'package:bookapp/widgets/two_side_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/main_page_bg.png"),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * 0.08),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline5,
                            children: [
                              TextSpan(text: "what are you \nreading "),
                              TextSpan(
                                text: "today?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ReadingListCard(
                              title: 'Crushing & Influence',
                              auth: 'مهدی شهسواری',
                              image: 'assets/book-1.png',
                              pressDetails: () {},
                              pressRead: () {},
                              rating: 4.9,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: ReadingListCard(
                                title: 'Chasing Twist',
                                auth: 'Gary Sawtalis',
                                image: 'assets/book-2.png',
                                pressDetails: () {},
                                pressRead: () {},
                                rating: 4.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.headline4,
                                children: [
                                  TextSpan(text: "Best of the "),
                                  TextSpan(
                                    text: "day",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            BestOfTheDay(),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.headline4,
                                children: [
                                  TextSpan(text: "Continue "),
                                  TextSpan(
                                    text: "reading...",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(38.5),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 10),
                                    blurRadius: 33,
                                    color: Color(0xFFD3D3D3).withOpacity(.85),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(38.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 30.0,
                                          right: 20,
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Crushing & Influence",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Gary Venchuck",
                                                    style: TextStyle(
                                                      color: kLightBlackColor,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Text(
                                                      "Chapter 7 of 10",
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: kLightBlackColor,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                ],
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/book-1.png",
                                              width: 55,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 7,
                                      width: size.width * .6,
                                      decoration: BoxDecoration(
                                        color: kProgressIndicator,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
